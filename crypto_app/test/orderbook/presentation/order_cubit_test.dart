import 'package:bloc_test/bloc_test.dart';
import 'package:collection/src/iterable_extensions.dart';
import 'package:crypto_app/data/socket_result.dart';
import 'package:crypto_app/domain/entities/order_entity.dart';
import 'package:crypto_app/ui/cubit/order_cubit.dart';
import 'package:crypto_app/ui/cubit/order_entry.dart';
import 'package:crypto_app/ui/cubit/order_state.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../mock.dart';

//TODO test assumes that snapshot/initial data is sorted.
main() {
  late OrderCubit orderCubit;
  late SocketRepoMock mockSocketRepo;
  const List<OrderEntry> mockBidList = [
    OrderEntry(price: 9288.0, quantity: 1230.0, side: SideEnum.buy),
    OrderEntry(price: 8683.0, quantity: 3934.0, side: SideEnum.buy),
    OrderEntry(price: 5960.0, quantity: 1272.0, side: SideEnum.buy),
    OrderEntry(price: 4055.0, quantity: 2425.0, side: SideEnum.buy),
    OrderEntry(price: 1430.0, quantity: 9690.0, side: SideEnum.buy),
  ];
  const List<OrderEntry> mockSellList = [
    OrderEntry(price: 153.0, quantity: 8541.0, side: SideEnum.ask),
    OrderEntry(price: 1923.0, quantity: 4240.0, side: SideEnum.ask),
    OrderEntry(price: 4140.0, quantity: 8480.0, side: SideEnum.ask),
    OrderEntry(price: 6343.0, quantity: 7549.0, side: SideEnum.ask),
    OrderEntry(price: 7649.0, quantity: 7561.0, side: SideEnum.ask),
    OrderEntry(price: 8079.0, quantity: 7038.0, side: SideEnum.ask),
  ];

  setUp(() {
    mockSocketRepo = SocketRepoMock();
    orderCubit = OrderCubit(mockSocketRepo);
  });

  tearDown(() {
    orderCubit.close();
  });

  group('Emissions', () {
    test(
        'the initial state for the CloseContainerCubit is that cubit is not closed and scrollValue is 0)',
        () {
      expect(orderCubit.state, OrderState.initial());
    });

    blocTest<OrderCubit, OrderState>('Test cubit emits Snapshot',
        build: () {
          when(() => mockSocketRepo.subscribe()).thenAnswer((invocation) {
            return Stream.fromIterable([
              const SocketResult.snapshot(mockBidList, mockSellList),
            ]);
          });
          return orderCubit;
        },
        act: (cubit) => cubit.getOrdersFor(),
        expect: () => <OrderState>[
              OrderState(
                  isLoading: false, asks: mockSellList, bids: mockBidList)
            ]);

    blocTest<OrderCubit, OrderState>('Test cubit emits Bid tick',
        build: () {
          return orderCubit;
        },
        seed: () => OrderState(
            bids: mockBidList,
            asks: mockSellList,
            isLoading: false,
            selectedEntry: null),
        act: (cubit) {
          when(() => mockSocketRepo.subscribe()).thenAnswer((invocation) {
            return Stream.fromIterable([
              SocketResult.tick(OrderEntry.bid(price: 20000, quantity: 50)),
            ]);
          });
          cubit.getOrdersFor();
        },
        expect: () => <OrderState>[
              OrderState(isLoading: false, asks: mockSellList, bids: [
                OrderEntry.bid(price: 20000, quantity: 50),
                ...mockBidList
              ])
            ],
        verify: (orderCubit) {
          expect(
              orderCubit.state.bids
                  .isSorted((a, b) => b.price.compareTo(a.price)),
              equals(true));
        });

    blocTest<OrderCubit, OrderState>('Test cubit emits Ask tick',
        build: () {
          when(() => mockSocketRepo.subscribe()).thenAnswer((_) {
            return Stream.fromIterable([
              SocketResult.tick(OrderEntry.ask(price: 0.5, quantity: 50)),
            ]);
          });
          return orderCubit;
        },
        seed: () => OrderState(
            bids: mockBidList,
            asks: mockSellList,
            isLoading: false,
            selectedEntry: null),
        act: (cubit) => cubit.getOrdersFor(),
        expect: () => <OrderState>[
              OrderState(
                  isLoading: false,
                  asks: [
                    OrderEntry.ask(price: 0.5, quantity: 50),
                    ...mockSellList
                  ],
                  bids: mockBidList)
            ],
        verify: (cubit) {
          expect(
              cubit.state.asks.isSorted((a, b) => a.price.compareTo(b.price)),
              equals(true));
        });
  });

  group('Tick Behaviour', () {
    blocTest<OrderCubit, OrderState>('state doesnt emit when quantity = 0',
        build: () {
          when(() => mockSocketRepo.subscribe()).thenAnswer((_) {
            return Stream.fromIterable([
              SocketResult.tick(OrderEntry.ask(price: 125, quantity: 0.0)),
              SocketResult.tick(OrderEntry.bid(price: 300, quantity: 0.0)),
            ]);
          });
          return orderCubit;
        },
        seed: () => OrderState(
            bids: mockBidList,
            asks: mockSellList,
            isLoading: false,
            selectedEntry: null),
        act: (cubit) => cubit.getOrdersFor(),
        expect: () => []);

    blocTest<OrderCubit, OrderState>('removes entries when new quantity = 0',
        build: () {
          when(() => mockSocketRepo.subscribe()).thenAnswer((_) {
            return Stream.fromIterable([
              SocketResult.tick(mockBidList.first.copyWith(quantity: 0)),
              SocketResult.tick(mockSellList.first.copyWith(quantity: 0)),
            ]);
          });
          return orderCubit;
        },
        seed: () => OrderState(
            bids: mockBidList,
            asks: mockSellList,
            isLoading: false,
            selectedEntry: null),
        act: (cubit) => cubit.getOrdersFor(),
        verify: (orderCubit) {
          expect(
              orderCubit.state.bids.firstWhereOrNull(
                  (element) => element.price == mockBidList.first.price),
              isNull);
          expect(
              orderCubit.state.asks.firstWhereOrNull(
                  (element) => element.price == mockSellList.first.price),
              isNull);
        });

    blocTest<OrderCubit, OrderState>('updates entry with new quantity',
        build: () {
          when(() => mockSocketRepo.subscribe()).thenAnswer((_) {
            return Stream.fromIterable([
              SocketResult.tick(mockBidList.first.copyWith(quantity: 250)),
              SocketResult.tick(mockBidList.first.copyWith(quantity: 500)),
            ]);
          });
          return orderCubit;
        },
        seed: () => OrderState(
            bids: mockBidList,
            asks: mockSellList,
            isLoading: false,
            selectedEntry: null),
        act: (cubit) => cubit.getOrdersFor(),
        verify: (orderCubit) {
          expect(orderCubit.state.bids.first.quantity, 500);
        });
  });
}

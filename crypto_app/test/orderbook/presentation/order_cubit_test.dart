import 'package:bloc_test/bloc_test.dart';
import 'package:crypto_app/data/socket_result.dart';
import 'package:crypto_app/domain/entities/order_entity.dart';
import 'package:crypto_app/ui/cubit/order_cubit.dart';
import 'package:crypto_app/ui/cubit/order_entry.dart';
import 'package:crypto_app/ui/cubit/order_state.dart';
import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../mock.dart';


main() {
  late OrderCubit orderCubit;
  late SocketRepoMock mockSocketRepo;
  late FutureCallbackMock futureMock;
  late List<OrderEntry> mockBidList;
  late List<OrderEntry> mockSellList;

  setUp(() {
    mockSocketRepo = SocketRepoMock();
    orderCubit = OrderCubit(mockSocketRepo);
    futureMock = FutureCallbackMock();
  });

  tearDown(() {
    orderCubit.close();
    //mockSocketRepo.closeConnection();
  });

  test(
      'the initial state for the CloseContainerCubit is that cubit is not closed and scrollValue is 0)',
      () {
    expect(orderCubit.state, OrderState.initial());
  });

  blocTest<OrderCubit, OrderState>(
    'Test cubit emits Snapshot',
    build: () {
       mockBidList = random.amount(
              (_) => OrderEntry(
              price: RandomGenerator().integer(10000, min: 1).toDouble(),
              quantity: RandomGenerator().integer(10000, min: 1).toDouble(),
              side: SideEnum.buy),
          10);
       mockSellList = random.amount(
              (_) => OrderEntry(
              price: RandomGenerator().integer(10000, min: 1).toDouble(),
              quantity: RandomGenerator().integer(10000, min: 1).toDouble(),
              side: SideEnum.sell),
          10);
      when(() => mockSocketRepo.subscribe(any())).thenAnswer((invocation) {
        return Stream.fromIterable([
          SocketResult.snapshot(mockBidList, mockSellList),
        ]);
      });

      return orderCubit;
    },
    act: (cubit) {
      Stream<SocketResult> mockStream = Stream.fromIterable([
        SocketResult.snapshot(mockBidList, mockSellList),
      ]);

      cubit.getOrdersFor();
    },
    expect: () => <OrderState>[
      OrderState(isLoading: false, asks: mockSellList, bids: mockBidList)
    ]
  );
//
//   blocTest<OrderCubit, OrderState>(
//     'Test cubit emits tick',
//     build: () {
//       mockSocketRepo = SocketRepoMock();
//       orderCubit = OrderCubit(mockSocketRepo);
//       return orderCubit;
//     },
//     act: (cubit) =>,
//     expect: () =>
//     <OrderState>[
//       //         [LoadingLoginState(), LoginSuccessfullyState(authEntity: authEntity)],
//     ],
//   );
//
//   blocTest<OrderCubit, OrderState>(
//     'Test cubit emits error',
//     build: () {
//       mockSocketRepo = SocketRepoMock();
//       orderCubit = OrderCubit(mockSocketRepo);
// //      when(mockUseCase.login(null, null)).thenAnswer((_) => throw TypeError());
//
//       return orderCubit;
//     },
//     act: (cubit) =>,
//     expect: () =>
//     <OrderState>[
//       // TODO: implement
//     ],
//   );
}

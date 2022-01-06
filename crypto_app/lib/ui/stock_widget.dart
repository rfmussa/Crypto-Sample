import 'package:crypto_app/domain/entities/order_entity.dart';
import 'package:crypto_app/ui/colors.dart';
import 'package:crypto_app/ui/cubit/order_cubit.dart';
import 'package:crypto_app/ui/cubit/order_entry.dart';
import 'package:crypto_app/ui/cubit/order_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StockWidget extends StatelessWidget {
  const StockWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              child: BlocConsumer<OrderCubit, OrderState>(
                  listener: (context, state) {},
                  buildWhen: (previous, current) {
                    return previous.selectedEntry != current.selectedEntry;
                  },
                  builder: (context, state) {
                    return TextField(
                        controller: TextEditingController(
                            text: state.selectedEntry?.quantity.toString()),
                        readOnly: true,
                        decoration: const InputDecoration(
                            hintText: "Quantity",
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.w300,
                                color: Colors.black45)));
                  }))
        ]),
        Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10.0),
            padding: const EdgeInsets.symmetric(
              vertical: 5.0,
              horizontal: 0.0,
            ),
            decoration: BoxDecoration(
              color: kTableBackground,
              border: Border.all(
                width: 1,
                color: Colors.white,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            child: Row(
              children: [
                Expanded(
                  child: BlocConsumer<OrderCubit, OrderState>(
                      listener: (context, state) {},
                      buildWhen: (previous, current) {
                        return previous.bids != current.bids;
                      },
                      builder: (context, state) {
                        return FractionallySizedBox(
                            widthFactor: 1,
                            alignment: Alignment.centerLeft,
                            child: Container(
                                // margin:
                                //     EdgeInsets.symmetric(horizontal: 4.0),
                                padding: const EdgeInsets.symmetric(
                                  vertical: 5.0
                                ),
                                child: DataTable(
                                    dataRowHeight: 40,
                                    columnSpacing: 24,
                                    horizontalMargin: 10,
                                    columns: _createColumns(),
                                    rows: _createRows(state.bids,
                                        onCellClick: (OrderEntry selected) {
                                      context
                                          .read<OrderCubit>()
                                          .setSelected(selected);
                                    }))));
                      }),
                ),
                Expanded(
                  child: BlocConsumer<OrderCubit, OrderState>(
                      listener: (context, state) {},
                      buildWhen: (previous, current) {
                        return previous.asks != current.asks;
                      },
                      builder: (context, state) {
                        return FractionallySizedBox(
                            widthFactor: 1,
                            child: Container(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 5.0
                                ),
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 0.0),
                                child: DataTable(
                                    dataRowHeight: 40,
                                    columnSpacing: 24,
                                    horizontalMargin: 10,
                                    columns: _createColumns(),
                                    rows: _createRows(state.asks,
                                        onCellClick: (OrderEntry selected) {
                                      context
                                          .read<OrderCubit>()
                                          .setSelected(selected);
                                    }))));
                      }),
                )
              ],
            ))
      ],
    ));
  }

  List<DataColumn> _createColumns() {
    return const [
      DataColumn(label: Text('Price')),
      DataColumn(label: Text('Quantity')),
    ];
  }

  List<DataRow> _createRows(List<OrderEntry> entries,
      {required Function(OrderEntry) onCellClick}) {
    return entries
        .take(10)
        .map((delta) => DataRow(
              cells: [
                DataCell(
                    Text(delta.price.toString(),
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: delta.side == SideEnum.buy
                                ? kBidsColor
                                : kAsksColor)), onTap: () {
                  onCellClick(delta);
                }),
                DataCell(Text(delta.quantity.round().toString()), onTap: () {
                  onCellClick(delta);
                }),
              ],
            ))
        .toList();
  }
}

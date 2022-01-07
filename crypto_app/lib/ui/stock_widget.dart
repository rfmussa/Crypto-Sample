import 'package:crypto_app/domain/entities/order_entity.dart';
import 'package:crypto_app/ui/colors.dart';
import 'package:crypto_app/ui/cubit/order_cubit.dart';
import 'package:crypto_app/ui/cubit/order_entry.dart';
import 'package:crypto_app/ui/cubit/order_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

const maxDepth = 10;

class BookWidget extends StatelessWidget {
  const BookWidget({Key? key}) : super(key: key);

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
                    return Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10.0),
                        padding: const EdgeInsets.symmetric(
                          vertical: 5.0,
                          horizontal: 10.0,
                        ),
                        decoration: const BoxDecoration(
                          color: kCardBackground,
                          shape: BoxShape.rectangle,
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 10.0,
                              offset: Offset(0.0, 10.0),
                            ),
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: TextField(
                            controller: TextEditingController(
                                text: state.selectedEntry?.quantity.toString()),
                            readOnly: true,
                            decoration: const InputDecoration(
                                border: InputBorder.none,
                                labelText: "Quantity",
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.always,
                                hintStyle: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black45))));
                  }))
        ]),
        Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10.0),
            padding: const EdgeInsets.symmetric(
              vertical: 5.0,
              horizontal: 0.0,
            ),
            decoration: const BoxDecoration(
              color: kCardBackground,
              shape: BoxShape.rectangle,
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10.0,
                  offset: Offset(0.0, 10.0),
                ),
              ],
              borderRadius: BorderRadius.all(Radius.circular(10)),
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
                                padding:
                                    const EdgeInsets.symmetric(vertical: 5.0),
                                child: DataTable(
                                    dataRowHeight: 40,
                                    columnSpacing: 24,
                                    horizontalMargin: 10,
                                    columns: const [
                                      DataColumn(
                                          label: Text('Quantity'),
                                          numeric: false),
                                      DataColumn(
                                          label: Text('Price'), numeric: true),
                                    ],
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
                                padding:
                                    const EdgeInsets.symmetric(vertical: 5.0),
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 0.0),
                                child: DataTable(
                                    dataRowHeight: 40,
                                    columnSpacing: 24,
                                    horizontalMargin: 10,
                                    columns: const [
                                      DataColumn(
                                          label: Text('Price'), numeric: true),
                                      DataColumn(
                                          label: Text('Quantity'),
                                          numeric: true),
                                    ],
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

  List<DataRow> _createRows(List<OrderEntry> entries,
      {required Function(OrderEntry) onCellClick}) {
    return entries
        .take(maxDepth)
        .map(
          (delta) => DataRow(cells: [
            if (delta.side == SideEnum.buy) ...[
              DataCell(Text(delta.quantity.round().toString()), onTap: () {
                onCellClick(delta);
              }),
              DataCell(
                  Text(delta.price.toString(),
                      style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          color: kBidsColor)), onTap: () {
                onCellClick(delta);
              })
            ] else if (delta.side == SideEnum.ask) ...[
              DataCell(
                  Text(delta.price.toString(),
                      style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          color: kAsksColor)), onTap: () {
                onCellClick(delta);
              }),
              DataCell(Text(delta.quantity.round().toString()), onTap: () {
                onCellClick(delta);
              })
            ]
          ]),
        )
        .toList();
  }
}

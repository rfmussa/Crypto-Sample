import 'package:crypto_app/data/model/snapshot_model.dart';
import 'package:crypto_app/ui/cubit/order_entry.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderTileWidget  extends StatelessWidget {
  final OrderEntry _stockEntity;
  //final TextStyle? style;
  // final TextStyle greyStyle = TextStyle(fontSize: CELL_FONT_SIZE, color: Color.Red, fontWeight: CELL_FONT_WEIGHT_LIGHT);
  // final TextStyle whiteStyle = TextStyle(fontSize: CELL_FONT_SIZE, color: whiteColorOp90, fontWeight: CELL_FONT_WEIGHT);

  const OrderTileWidget(this._stockEntity, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(_stockEntity.price.toString()),
      trailing: Text(_stockEntity.quantity.toString()),
    );
  }
}

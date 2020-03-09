import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../item/item.dart';

part 'item_stock.freezed.dart';

@freezed
abstract class ItemStock with _$ItemStock {
  const factory ItemStock({
    @required Item item,
    @required int quantity,
  }) = _ItemStock;
}

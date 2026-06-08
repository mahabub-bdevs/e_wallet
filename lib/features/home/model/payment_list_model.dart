import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_list_model.freezed.dart';
part 'payment_list_model.g.dart';

@freezed
class PaymentItem with _$PaymentItem {
  const factory PaymentItem({
    required String id,
    required String title,
    required String iconPath,
    @Default(0xFF000000) int iconColor,
  }) = _PaymentItem;

  factory PaymentItem.fromJson(Map<String, dynamic> json) =>
      _$PaymentItemFromJson(json);
}

@freezed
class PaymentListModel with _$PaymentListModel {
  const factory PaymentListModel({
    required List<PaymentItem> payments,
  }) = _PaymentListModel;

  factory PaymentListModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentListModelFromJson(json);
}
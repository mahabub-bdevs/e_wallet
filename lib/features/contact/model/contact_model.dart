import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_model.freezed.dart';
part 'contact_model.g.dart';

@freezed
class ContactModel with _$ContactModel {
  const factory ContactModel({
    required String name,
    @JsonKey(name: 'bank_account') required String bankAccount,
    @JsonKey(name: 'image_url') required String imageUrl,
    @JsonKey(name: 'is_recent') required bool isRecent,
  }) = _ContactModel;

  factory ContactModel.fromJson(Map<String, dynamic> json) =>
      _$ContactModelFromJson(json);


  static List<ContactModel> filterRecent(List<ContactModel> contacts) {
    return contacts.where((contact) => contact.isRecent).toList();
  }
  static List<ContactModel> filterOld(List<ContactModel> contacts) {
    return contacts.where((contact) => !contact.isRecent).toList();
  }
}
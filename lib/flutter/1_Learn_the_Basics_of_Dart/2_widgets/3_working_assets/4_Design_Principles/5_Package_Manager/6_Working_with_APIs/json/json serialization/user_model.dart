import 'package:json_annotation/json_annotation.dart';
part 'user_model.g.dart';
@JsonSerializable()
class UserModel {
  late String id;
  late String fullName;
  late String email;

  UserModel({required this.id, required this.fullName, required this.email});
  // from json
  factory UserModel.fromJson(Map<String, dynamic> map) => _$UserModelFromJson(map);

  // to json
  Map<String , dynamic > toJson() => _$UserModelToJson(this);
}








// class UserModel {
//   late String id;
//   late String fullName;
//   late String email;

//   UserModel({required this.id, required this.fullName, required this.email});

//   // from json
//   factory UserModel.fromJson(Map<String, dynamic> map) {
//     return UserModel(
//       id: map['id'],
//       fullName: map['fullName'],
//       email: map['email'],
//     );
//   }

//   // to json
//   Map<String, dynamic> toJson() {
//     return {
//       'id': id,
//       'fullName': fullName,
//       'email': email,
//     };
//   }
// }

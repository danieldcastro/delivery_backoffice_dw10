import 'dart:convert';

class AuthModel {
  final String accessToken;
  AuthModel({
    required this.accessToken,
  });

  Map<String, dynamic> toMap() => <String, dynamic>{
        'access_token': accessToken,
      };

  factory AuthModel.fromMap(Map<String, dynamic> map) => AuthModel(
        accessToken: map['access_token'] as String,
      );

  String toJson() => json.encode(toMap());

  factory AuthModel.fromJson(String source) =>
      AuthModel.fromMap(json.decode(source) as Map<String, dynamic>);
}

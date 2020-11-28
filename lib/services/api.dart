import 'package:flutter/foundation.dart';

class CallsImageApi {
  final String name;
  final String email;

  CallsImageApi(this.name, this.email);

  CallsImageApi.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        email = json['email'];

  Map<String, dynamic> toJson() => {
        'name': name,
        'email': email,
      };
}

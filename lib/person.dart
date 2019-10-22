import 'package:json_annotation/json_annotation.dart';

@JsonSerializable(nullable: false)
class Person {
  final String firstName;
  final String lastName;
  final DateTime dateOfBirth;

  Person({this.firstName, this.lastName, this.dateOfBirth});

  external factory Person.fromJson(Map<String, dynamic> json);

  external Map<String, dynamic> toJson();
}

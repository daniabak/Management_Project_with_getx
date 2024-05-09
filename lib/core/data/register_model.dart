// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class RegisterModel {
  String role;
  String password;
  String email;
  String lastName;
  String firstName;
  RegisterModel({
    required this.role,
    required this.password,
    required this.email,
    required this.lastName,
    required this.firstName,
  });

  RegisterModel copyWith({
    String? role,
    String? password,
    String? email,
    String? lastName,
    String? firstName,
  }) {
    return RegisterModel(
      role: role ?? this.role,
      password: password ?? this.password,
      email: email ?? this.email,
      lastName: lastName ?? this.lastName,
      firstName: firstName ?? this.firstName,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'role': role,
      'password': password,
      'email': email,
      'lastName': lastName,
      'firstName': firstName,
    };
  }

  factory RegisterModel.fromMap(Map<String, dynamic> map) {
    return RegisterModel(
      role: map['role'] as String,
      password: map['password'] as String,
      email: map['email'] as String,
      lastName: map['lastName'] as String,
      firstName: map['firstName'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory RegisterModel.fromJson(String source) => RegisterModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'RegisterModel(role: $role, password: $password, email: $email, lastName: $lastName, firstName: $firstName)';
  }

  @override
  bool operator ==(covariant RegisterModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.role == role &&
      other.password == password &&
      other.email == email &&
      other.lastName == lastName &&
      other.firstName == firstName;
  }

  @override
  int get hashCode {
    return role.hashCode ^
      password.hashCode ^
      email.hashCode ^
      lastName.hashCode ^
      firstName.hashCode;
  }
}

import 'dart:convert';

// Model data Profile
class Profile {
  final String id;
  final String username;
  final String email;
  final String password;

  Profile({
    required this.id,
    required this.username,
    required this.email,
    required this.password,
  });

  factory Profile.fromJson(Map<String, dynamic> json) {
    return Profile(
      id: json['id'].toString(),
      username: json['username'],
      email: json['email'],
      password: json['password'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'username': username,
      'email': email,
      'password': password,
    };
  }
}

// Fungsi untuk konversi dari JSON
List<Profile> profileFromJson(String str) =>
    List<Profile>.from(json.decode(str).map((x) => Profile.fromJson(x)));

// Fungsi untuk konversi ke JSON
String profileToJson(List<Profile> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

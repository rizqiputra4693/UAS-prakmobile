import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/profile_model.dart';

class ApiService {
  final String baseUrl;

  ApiService({this.baseUrl = 'http://10.0.183.97:3000/users'});

  var client = http.Client();

  Future<bool> validateUser(String username, String password) async {
    try {
      var uri = Uri.parse(baseUrl);
      var response = await client.get(uri);
      if (response.statusCode == 200) {
        List<Profile> users = profileFromJson(response.body);
        for (var user in users) {
          if (user.username == username && user.password == password) {
            return true;
          }
        }
      }
      return false;
    } catch (e) {
      print("Error validating user: $e");
      return false;
    }
  }

  // Get all profiles
  Future<List<Profile>?> getProfiles() async {
    try {
      var uri = Uri.parse(baseUrl);
      var response = await client.get(uri);
      if (response.statusCode == 200) {
        return profileFromJson(response.body);
      }
      return null;
    } catch (e) {
      print("Error fetching profiles: $e");
      return null;
    }
  }

  // Save a profile
  Future<bool> saveProfile(Profile profile) async {
    try {
      var uri = Uri.parse(baseUrl);
      final response = await client.post(
        uri,
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(profile.toJson()),
      );
      return response.statusCode == 201;
    } catch (e) {
      print("Error saving profile: $e");
      return false;
    }
  }

  // Delete a profile
  Future<bool> deleteProfile(String id) async {
    try {
      var uri = Uri.parse('$baseUrl/$id');
      final response = await client.delete(uri);
      return response.statusCode == 200;
    } catch (e) {
      print("Error deleting profile: $e");
      return false;
    }
  }

  // Update a profile
  Future<bool> updateProfile(Profile profile) async {
    try {
      var uri = Uri.parse('$baseUrl/${profile.id}');
      final response = await client.put(
        uri,
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(profile.toJson()),
      );
      return response.statusCode == 200;
    } catch (e) {
      print("Error updating profile: $e");
      return false;
    }
  }
}

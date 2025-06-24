import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class ServiceApi {
  final String baseUrl = "https://aipowered.globallywebsolutions.com/api";

  Future<Map<String, dynamic>> registerUser({
    required String name,
    required String email,
    required String password,
    required String phone,
    required String gender,
    required String dateOfBirth,
    String? token, // optional token if needed
  }) async {
    final url = Uri.parse('$baseUrl/matrimony/auth/register');

    final Map<String, dynamic> requestBody = {
      'name': name,
      'email': email,
      'password': password,
      'phone': phone,
      'gender': gender,
      'date_of_birth': dateOfBirth,
    };

    // ✅ Print body before sending
    print("Sending registration data:");
    print(jsonEncode(requestBody));

    try {
      final response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(requestBody),
      );

      return {
        "statusCode": response.statusCode,
        "body": json.decode(response.body),
      };
    } catch (e) {
      throw Exception("Registration failed: $e");
    }
  }

  Future<Map<String, dynamic>> loginUser({
    required String emailOrPhone,
    required String password,
  }) async {
    final url = Uri.parse('$baseUrl/matrimony/auth/login');

    try {
      final response = await http.post(
        url,
        headers: {'Content-Type': 'application/x-www-form-urlencoded'},
        body: {'email_or_phone': emailOrPhone, 'password': password},
      );

      final Map<String, dynamic> data = json.decode(response.body);

    final token = data['token'];
    final userId = data['user_id'];
    final expiresIn = data['expires_in'];

    // ✅ Store token in shared preferences
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('token', token);
    await prefs.setInt('user_id', userId);
    await prefs.setInt('expires_in', expiresIn);
      return {
        "statusCode": response.statusCode,
        "body": jsonDecode(response.body),
      };
    } catch (e) {
      throw Exception("Login failed: $e");
    }
  }




Future<Map<String, dynamic>> fetchProfile({
  required int userId,
  required String token,
}) async {
  final url = Uri.parse('$baseUrl/matrimony/profile/?user_id=$userId');

  try {
    final response = await http.get(
      url,
      headers: {
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
      },
    );

    return {
      "statusCode": response.statusCode,
      "body": jsonDecode(response.body),
    };
  } catch (e) {
    throw Exception("Failed to load profile: $e");
  }
}







  Future<Map<String, dynamic>> searchProfiles({
    required String token,
    String? gender,
    String? ageMin,
    String? ageMax,
    String? religion,
    String? caste,
    String? location,
    String? education,
    String? occupation,
    int page = 1,
    int limit = 10,
  }) async {
    final uri = Uri.parse('${baseUrl}matrimony/search');

    final headers = {
      'Authorization': 'Bearer $token',
      'Accept': 'application/json',
    };

    final body = {
      'gender': gender ?? '',
      'age_min': ageMin ?? '',
      'age_max': ageMax ?? '',
      'religion': religion ?? '',
      'caste': caste ?? '',
      'location': location ?? '',
      'education': education ?? '',
      'occupation': occupation ?? '',
      'page': page.toString(),
      'limit': limit.toString(),
    };

    try {
      final response = await http.post(
        uri,
        headers: headers,
        body: body,
      );

      return {
        'statusCode': response.statusCode,
        'body': jsonDecode(response.body),
      };
    } catch (e) {
      throw Exception('Failed to search profiles: $e');
    }
  }


}




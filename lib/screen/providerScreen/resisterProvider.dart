
import 'package:ai_powered_app/screen/providerScreen/Service.dart';
import 'package:flutter/material.dart';

class RegisterProvider extends ChangeNotifier {
  final ServiceApi _service = ServiceApi();

  bool isLoading = false;
  String? errorMessage;
  Map<String, dynamic>? response;

  Future<void> register({
    required String name,
    required String email,
    required String password,
    required String phone,
    required String gender,
    required String dateOfBirth,

  }) async {
    isLoading = true;
    errorMessage = null;
    notifyListeners();

    try {
      final result = await _service.registerUser(
        name: name,
        email: email,
        password: password,
        phone: phone,
        gender: gender,
        dateOfBirth: dateOfBirth,

      );

      response = result;
      if (result['statusCode'] != 200) {
        errorMessage = result['body']['message'] ?? "Something went wrong";
      }
    } catch (e) {
      errorMessage = e.toString();
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}

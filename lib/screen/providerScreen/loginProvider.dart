
import 'package:ai_powered_app/screen/providerScreen/Service.dart';
import 'package:flutter/material.dart';


class LoginProvider extends ChangeNotifier {
  final ServiceApi _service = ServiceApi();

  bool isLoading = false;
  String? errorMessage;
  Map<String, dynamic>? response;

  Future<void> login({
    required String emailOrPhone,
    required String password,
  }) async {
    isLoading = true;
    errorMessage = null;
    notifyListeners();

    try {
      final result = await _service.loginUser(
        emailOrPhone: emailOrPhone,
        password: password,
      );

      response = result;

      if (result['statusCode'] != 200) {
        errorMessage = result['body']['message'] ?? "Invalid login credentials";
      }
    } catch (e) {
      errorMessage = e.toString();
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}

// lib/screen/providerScreen/profile_provider.dart

import 'package:ai_powered_app/screen/providerScreen/Service.dart';
import 'package:flutter/material.dart';


class ProfileProvider extends ChangeNotifier {
  final ServiceApi _service = ServiceApi();

  bool isLoading = false;
  String? errorMessage;
  Map<String, dynamic>? profileData;

Future<void> getProfile({required String token, required int userId}) async {
  isLoading = true;
  errorMessage = null;
  notifyListeners();

  try {
    final result = await _service.fetchProfile(userId: userId, token: token);

    if (result['statusCode'] == 200) {
      profileData = result['body']['data'];
    } else {
      errorMessage = result['body']['message'] ?? "Failed to fetch profile";
    }
  } catch (e) {
    errorMessage = e.toString();
  } finally {
    isLoading = false;
    notifyListeners();
  }
}




}

// providers/search_provider.dart

import 'package:ai_powered_app/screen/providerScreen/SearchResultModel.dart';
import 'package:ai_powered_app/screen/providerScreen/Service.dart';
import 'package:flutter/material.dart';

class SearchProvider extends ChangeNotifier {
  final ServiceApi _apiService = ServiceApi();

  List<SearchResult> results = [];
  bool isLoading = false;
  String? error;

  Future<void> searchProfiles({
    required String token,
    required String gender,
    required String ageMin,
    required String ageMax,
    required String religion,
    required String caste,
    required String location,
    required String education,
    required String occupation,
    required int page,
    required int limit,
  }) async {
    isLoading = true;
    notifyListeners();

    try {
      final response = await _apiService.searchProfiles(
        token: token,
        gender: gender,
        ageMin: ageMin,
        ageMax: ageMax,
        religion: religion,
        caste: caste,
        location: location,
        education: education,
        occupation: occupation,
        page: page,
        limit: limit,
      );

      if (response['statusCode'] == 200) {
        results = (response['body']['results'] as List)
            .map((json) => SearchResult.fromJson(json))
            .toList();
      } else {
        error = response['body']['message'] ?? "Failed to fetch data";
      }
    } catch (e) {
      error = e.toString();
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}

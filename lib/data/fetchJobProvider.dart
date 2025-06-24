import 'package:ai_powered_app/core/network/api.state.dart';
import 'package:ai_powered_app/core/utils/pretty.dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final fetchJobProvider = FutureProvider((ref) async {
  final fetchService = APIStateNetwork(callDio());
  return await fetchService.fetchJob();
});

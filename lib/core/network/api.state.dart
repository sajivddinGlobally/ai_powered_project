import 'package:ai_powered_app/data/model/fetchJoblistingModel.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

part 'api.state.g.dart';

@RestApi(baseUrl: "https://aipowered.globallywebsolutions.com")
abstract class APIStateNetwork {
  factory APIStateNetwork(Dio dio, {String baseUrl}) = _APIStateNetwork;

  @GET(
    "jobs/listings?keyword=Future Systems&location=Sallieshire&job_type=Contract&experience_min&experience_max&industry&page=1&limit=10",
  )
  Future<FetchJobListingModel> fetchJob();
}

import 'package:netfliks_bloc/core/strings.dart';
import 'package:netfliks_bloc/infrastructure/api_key.dart';

class ApiEndPoints {
  static const downloads =
      "$kBaseUrl/trending/all/day?api_key=$apiKey";
}

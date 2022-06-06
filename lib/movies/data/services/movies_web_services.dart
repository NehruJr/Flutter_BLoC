import 'dart:convert';

import 'package:flutter_with_bloc/movies/data/model/movies_model.dart';
import 'package:flutter_with_bloc/utils/constants.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  Future<List<Movies>> moviesSevices() async {
    final queryParameters = <String, String>{'api_key': TMDB_KEY};

    final res = await http.get(
      Uri.parse('${TMDB_BASE_URL}top_rated')
          .replace(queryParameters: queryParameters),
    );

    if (res.statusCode == 200) {
      return List<Movies>.from(
          jsonDecode(res.body)['results'].map((data) => Movies.fromJson(data)));
    } else {
      throw ErrorGettingMovies('Error getting movies');
    }
  }
}

class ErrorGettingMovies implements Exception {
  ErrorGettingMovies(String error);
}

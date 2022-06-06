import 'package:flutter_with_bloc/movies/data/model/movies_model.dart';

import '../services/movies_web_services.dart';

class MoviesRepository {
  final ApiServices apiServices;

  MoviesRepository(this.apiServices);
  Future<List<Movies>> getMovies() async {
    return await apiServices.moviesSevices();
  }
}

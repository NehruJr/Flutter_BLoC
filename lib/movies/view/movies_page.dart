import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_with_bloc/movies/movie_bloc/movie_bloc.dart';

import '../data/repository/movies_repository.dart';
import '../data/services/movies_web_services.dart';
import 'movie_view.dart';

class MoviesPage extends StatelessWidget {
  const MoviesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
        create: (context) => MoviesRepository(ApiServices()),
        child: BlocProvider<MovieBloc>(
          create: (BuildContext context) =>
              MovieBloc(moviesRepository: context.read<MoviesRepository>())
                ..add(GetMovies()),
          child: const MovieView(),
        ));
  }
}

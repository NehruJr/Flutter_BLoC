import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_with_bloc/movies/movie_bloc/movie_bloc.dart';
import 'package:flutter_with_bloc/movies/view/widgets/widgets.dart';

class MovieView extends StatelessWidget {
  const MovieView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MovieBloc, MovieState>(builder: (context, state) {
      return state.status.isSuccess
          ? const MoviesSuccessWidget()
          : state.status.isLoading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : state.status.isError
                  ? const ErrorGameWidget()
                  : const SizedBox();
    });
  }
}

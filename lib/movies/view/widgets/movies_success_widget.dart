import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_with_bloc/movies/movie_bloc/movie_bloc.dart';
import 'package:flutter_with_bloc/movies/view/widgets/movie_card.dart';

class MoviesSuccessWidget extends StatelessWidget {
  const MoviesSuccessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text('Top rated movies')),
        body: BlocBuilder<MovieBloc, MovieState>(
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: 4 / 6),
                  itemBuilder: (context, index) =>
                      MovieCard(movie: state.movies[index])),
            );
          },
        ),
      ),
    );
  }
}

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_with_bloc/movies/data/model/movies_model.dart';
import 'package:flutter_with_bloc/movies/data/repository/movies_repository.dart';

part 'movie_event.dart';
part 'movie_state.dart';

class MovieBloc extends Bloc<MovieEvent, MovieState> {
  MovieBloc({required this.moviesRepository}) : super(const MovieState()) {
    on<GetMovies>(_mapGetMoviesEventToState);
  }

  final MoviesRepository moviesRepository;

  FutureOr<void> _mapGetMoviesEventToState(
      GetMovies event, Emitter<MovieState> emit) async {
    emit(state.copyWith(status: MovieStatus.loading));

    try {
      final movies = await moviesRepository.getMovies();
      emit(state.copyWith(status: MovieStatus.success, movies: movies));
    } catch (error) {
      emit(state.copyWith(status: MovieStatus.error));
    }
  }
}

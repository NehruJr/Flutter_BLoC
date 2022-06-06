part of 'movie_bloc.dart';

enum MovieStatus { initial, loading, success, error }

extension MovieStatusX on MovieStatus {
  bool get isInitial => this == MovieStatus.initial;
  bool get isLoading => this == MovieStatus.loading;
  bool get isSuccess => this == MovieStatus.success;
  bool get isError => this == MovieStatus.error;
}

class MovieState extends Equatable {
  const MovieState({this.status = MovieStatus.initial, List<Movies>? movies})
      : movies = movies ?? const [];
  final MovieStatus status;
  final List<Movies> movies;
  @override
  List<Object> get props => [status, movies];

  MovieState copyWith({List<Movies>? movies, MovieStatus? status}) {
    return MovieState(
        status: status ?? this.status, movies: movies ?? this.movies);
  }
}

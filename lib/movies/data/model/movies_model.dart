class Movies {
  int? id;
  String? posterPath;
  String? releaseDate;
  String? title;
  double? voteAverage;

  Movies({
    this.id,
    this.posterPath,
    this.releaseDate,
    this.title,
    this.voteAverage,
  });

  Movies.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    posterPath = json['poster_path'];
    releaseDate = json['release_date'];
    title = json['title'];
    voteAverage = json['vote_average'];
  }
}

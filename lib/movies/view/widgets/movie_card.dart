import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_with_bloc/movies/data/model/movies_model.dart';
import 'package:flutter_with_bloc/utils/constants.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({Key? key, required this.movie}) : super(key: key);

  final Movies movie;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 200,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      '$TMDB_POSTERS_BASE_URL${movie.posterPath}'))),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(movie.title ?? ''),
        const SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RatingBar.builder(
                minRating: 1,
                maxRating: 10,
                itemSize: 16,
                unratedColor: Colors.black45,
                initialRating: movie.voteAverage!,
                itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                onRatingUpdate: (rating) {}),
            Text(movie.voteAverage.toString())
          ],
        ),
      ],
    );
  }
}

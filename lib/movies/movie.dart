import 'package:flutter/material.dart';
import 'package:flutter_with_bloc/movies/view/movies_page.dart';

class MovieApplication extends StatelessWidget {
  const MovieApplication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie Bloc',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MoviesPage(),
    );
  }
}

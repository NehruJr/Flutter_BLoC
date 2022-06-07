import 'package:flutter/material.dart';

class ErrorGettingMoviesWidget extends StatelessWidget {
  const ErrorGettingMoviesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 500,
                width: 500,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/errorVector.png'))),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                'Something was wrong',
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

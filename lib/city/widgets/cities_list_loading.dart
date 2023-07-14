import 'package:flutter/material.dart';

class CitiesListLoading extends StatelessWidget {
  const CitiesListLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}

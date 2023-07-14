import 'package:flutter/material.dart';

class LoadingErrorWidget extends StatelessWidget {
  const LoadingErrorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.warning_rounded,
      color: Theme.of(context).colorScheme.error,
      size: 64,
    );
  }
}

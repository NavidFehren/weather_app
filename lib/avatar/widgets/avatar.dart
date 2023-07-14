import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  const Avatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 24,
      // TODO: Could use flutter_gen here
      backgroundImage: AssetImage("assets/images/steve_jobs.jpeg"),
    );
  }
}

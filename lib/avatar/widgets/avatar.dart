import 'package:flutter/material.dart';
import 'package:weather_app/gen/assets.gen.dart';

class Avatar extends StatelessWidget {
  const Avatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 24,
      backgroundImage: AssetImage(Assets.images.steveJobs.path),
    );
  }
}

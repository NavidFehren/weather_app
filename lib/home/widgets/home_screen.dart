import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/avatar/widgets/avatar.dart';
import 'package:weather_app/bottom_navigation/blocs/bottom_navigation_cubit.dart';
import 'package:weather_app/bottom_navigation/widgets/bottom_navigation.dart';
import 'package:weather_app/shared/extensions/padding_extension.dart';
import 'package:weather_app/shared/widgets/main_page_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          const Avatar().padding(right: 16, bottom: 8),
        ],
      ),
      bottomNavigationBar: const BottomNavigation(),
      body: MainPageContainer(
        child: BlocBuilder<BottomNavigationCubit, BottomNavigationState>(
          builder: (context, state) {
            return state.currentItem.content.paddingAll(16);
          },
        ),
      ),
    );
  }
}

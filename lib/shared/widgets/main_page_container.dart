import 'package:flutter/material.dart';
import 'package:weather_app/shared/extensions/padding_extension.dart';
import 'package:weather_app/shared/theme/app_gradient.dart';

class MainPageContainer extends StatelessWidget {
  final Widget? header;
  final Alignment? headerAlignment;
  final Widget child;
  final bool largeHeader;

  const MainPageContainer({
    Key? key,
    required this.child,
    this.largeHeader = false,
    this.headerAlignment = Alignment.bottomLeft,
    this.header,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final safeAreaHeight = MediaQuery.of(context).padding.top;
    final appBarHeight = safeAreaHeight + (largeHeader ? 176 : 16);
    final contentHeight = deviceHeight - appBarHeight;

    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Positioned.fill(
          child: Container(
            alignment: headerAlignment,
            decoration: BoxDecoration(
              gradient: AppGradient.green.value,
            ),
            child: header?.padding(
              top: safeAreaHeight + 16,
              left: 16,
              right: 16,
            ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          height: contentHeight,
          child: Container(
            // alignment: Alignment.topCenter,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(32),
              ),
              color: Colors.white,
            ),
            child: child.padding(top: 32),
          ),
        ),
      ],
    );
  }
}

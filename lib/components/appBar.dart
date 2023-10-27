import 'package:dev/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar extends StatelessWidget {
  final GlobalKey<ScaffoldState> keyy;
  const CustomAppBar({super.key, required this.keyy});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: SvgPicture.asset(logo),
      leading: Padding(
        padding: const EdgeInsets.only(left: 25, top: 10),
        child: GestureDetector(
          onTap: () => keyy.currentState!.openDrawer(),
          child: SvgPicture.asset(
            menu,
            width: 10,
            height: 10,
          ),
        ),
      ),
    );
  }
}

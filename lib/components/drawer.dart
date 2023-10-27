import 'package:dev/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyDrawer extends StatelessWidget {
  final GlobalKey<ScaffoldState> keyy;
  const MyDrawer({super.key, required this.keyy});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width * .6,
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 140,
                decoration: const BoxDecoration(color: Colors.black),
              ),
              Positioned(
                bottom: 30,
                left: 20,
                child: SvgPicture.asset(
                  logo2,
                  width: 100,
                ),
              ),
              Positioned(
                top: 0,
                right: 0,
                child: SvgPicture.asset(
                  cubes,
                  width: 60,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          GestureDetector(
            onTap: () {
              keyy.currentState!.openEndDrawer();
              Navigator.of(context).pushReplacementNamed(home);
            },
            child: const Text(
              "Home",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          GestureDetector(
            onTap: () => Navigator.of(context).pushNamed(aboutUs),
            child: const Text(
              aboutUss,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}

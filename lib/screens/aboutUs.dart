import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../components/appBar.dart';
import '../components/drawer.dart';
import '../strings.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _key,
      drawer: MyDrawer(keyy: _key),
      appBar:  PreferredSize(preferredSize: const Size.fromHeight(60), child: CustomAppBar(keyy: _key,)),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 30),
        child: Column(
          children: [
            SvgPicture.asset(
              gdg,
              width: MediaQuery.of(context).size.width,
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              text1,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:dev/components/appBar.dart';
import 'package:dev/components/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../dummy.dart';
import '../strings.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _key,
        drawer: MyDrawer(keyy: _key),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: CustomAppBar(
            keyy: _key,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(bottom: 20, right: 30, left: 30),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SvgPicture.asset(animation),
            const Text(
              ourFields,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(
              height: 110,
              child: ListView.builder(
                itemCount: list.length,
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Container(
                  width: 95,
                  margin: const EdgeInsets.only(right: 10, top: 10, bottom: 10),
                  decoration: const BoxDecoration(color: Colors.white),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 35,
                          width: 35,
                          padding: const EdgeInsets.all(8),
                          decoration:
                              BoxDecoration(color: list[index]["color"]),
                          child: SvgPicture.asset(
                            "assets/${list[index]["path"]}",
                            height: 2,
                          ),
                        ),
                        Text(
                          list[index]["name"],
                          style: const TextStyle(fontWeight: FontWeight.w400),
                        )
                      ]),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              previousDevfest,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.separated(
                
                itemCount: dummy.length,
                separatorBuilder: (context, index) =>
                    const Padding(padding: EdgeInsets.all(4)),
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) => Container(
                  height: 120,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                  width: double.infinity,
                  decoration: const BoxDecoration(color: Colors.white),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(
                                  right: 15, bottom: 5, left: 17),
                              child: SvgPicture.asset(
                                "assets/${dummy[index]["picture"]}",
                                width: 85,
                              ),
                            ),
                            SvgPicture.asset(
                              left,
                              height: 30,
                              width: 85,
                            ),
                            Positioned(
                              top: 0,
                              left: 0,
                              child: SvgPicture.asset(
                                right,
                                height: 30,
                                width: 85,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                dummy[index]["title"],
                                style: const TextStyle(
                                    color: Colors.blue,
                                    fontSize: 23,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                dummy[index]["text"],
                                style: const TextStyle(
                                    fontSize: 9, fontWeight: FontWeight.w600),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 5,
                              )
                            ],
                          ),
                        )
                      ]),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}


            // Stack(
            //   children: [
            //     Container(
            //       height: 150,
            //       width: double.infinity,
            //       decoration: const BoxDecoration(color: Colors.white),
            //     ),
            //     Positioned(
            //       child: SvgPicture.asset(left2),
            //     ),
            //     Positioned(
            //       bottom: 25,
            //       left: 0,
            //       child: SvgPicture.asset(
            //         square,
            //       ),
            //     ),
            //     Positioned(
            //       bottom: 5,
            //       right: 0,
            //       child: SvgPicture.asset(right2),
            //     ),
            //     Positioned(
            //       top: 2,
            //       right: 10,
            //       child: SvgPicture.asset(makam),
            //     ),
            //   ],
            // ),
            // const SizedBox(
            //   height: 20,
            // ),
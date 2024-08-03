import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_demo_task_2982/page/HomeScreen/component/BestForYou.dart';
import 'package:flutter_demo_task_2982/page/HomeScreen/component/HomeCategory.dart';
import 'package:flutter_demo_task_2982/page/HomeScreen/component/HomeHeader.dart';
import 'package:flutter_demo_task_2982/page/HomeScreen/component/HomeSearchingBar.dart';
import 'package:flutter_demo_task_2982/page/HomeScreen/component/Recommend.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => HomeScreenPage();
}

class HomeScreenPage extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 250, 250, 250),
      ),
      child: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 54, 0, 0),
            child: Column(
              children: [
                const HomeHeader(),
                const SizedBox(
                  height: 22,
                ),
                const HomeSeachingBar(),
                const SizedBox(
                  height: 28,
                ),
                const HomeCategory(),
                const SizedBox(
                  height: 27,
                ),
                Row(
                  children: [
                    const Text(
                      "Near from you",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          decoration: TextDecoration.none),
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.only(right: 20),
                      child: TextButton(
                        child: const Text(
                          "See more",
                          style: TextStyle(
                            fontSize: 13,
                            color: Color.fromARGB(255, 133, 133, 133),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                const NearFromYou(),
                const SizedBox(
                  height: 32,
                ),
                Row(
                  children: [
                    const Text(
                      "Best for you",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          decoration: TextDecoration.none),
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.only(right: 20),
                      child: TextButton(
                        child: const Text(
                          "See more",
                          style: TextStyle(
                            fontSize: 13,
                            color: Color.fromARGB(255, 133, 133, 133),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 14,
                ),
                const BestForYou(),
              ],
            )),
      ),
    );
  }
}

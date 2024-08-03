import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_demo_task_2982/page/DetailScreen/component/BottomState.dart';
import 'package:flutter_demo_task_2982/page/DetailScreen/component/Description.dart';
import 'package:flutter_demo_task_2982/page/DetailScreen/component/Gallery.dart';
import 'package:flutter_demo_task_2982/page/DetailScreen/component/House.dart';

class RoomDetail extends StatelessWidget {
  const RoomDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 50, 20, 0),
      color: const Color.fromARGB(255, 250, 250, 250),
      child: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HouseImage(),
            SizedBox(
              height: 20,
            ),
            DescriptionAndUser(),
            SizedBox(
              height: 32,
            ),
            Text(
              "Gallery",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                decoration: TextDecoration.none,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GalleryScreen(),
            SizedBox(
              height: 32,
            ),
            BottomState(),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              "assets/images/livingroom.png",
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            )),
        ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              "assets/images/bedroom.png",
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            )),
        ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              "assets/images/workroom.png",
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            )),
        ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Stack(
              children: [
                Image.asset(
                  "assets/images/stair.png",
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                ),
                Container(
                  width: 80,
                  height: 80,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(77, 0, 0, 0),
                  ),
                ),
                const Positioned(
                    left: 0,
                    right: 0,
                    top: 0,
                    bottom: 0,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "+5",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            decoration: TextDecoration.none),
                      ),
                    ))
              ],
            )),
      ],
    );
  }
}

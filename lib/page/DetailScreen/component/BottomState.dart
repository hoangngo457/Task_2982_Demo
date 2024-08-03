import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BottomState extends StatelessWidget {
  const BottomState({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              "assets/images/maps.png",
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 30,
            left: 210,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: 20,
                width: 20,
                color: const Color.fromARGB(51, 10, 142, 217),
              ),
            ),
          ),
          Positioned(
            top: 35,
            left: 215,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                height: 10,
                width: 10,
                color: const Color.fromARGB(255, 10, 142, 217),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.fromLTRB(20, 0, 10, 10),
              height: 80,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0x00FFFFFF),
                    Color(0xFFFFFFFF),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.34, 0.64],
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Price",
                        style: TextStyle(
                            fontSize: 12,
                            color: Color.fromARGB(255, 133, 133, 133),
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        "Rp. 2.500.000.000/Year",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      print("Press rent now");
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(17, 13, 17, 13),
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFFA0DAFB),
                              Color(0xFF0A8ED9),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            stops: [0.14, 1.0],
                          ),
                        ),
                        child: const Text(
                          "Rent Now",
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.none),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

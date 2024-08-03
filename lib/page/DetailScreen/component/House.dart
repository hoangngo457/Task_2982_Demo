import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HouseImage extends StatelessWidget {
  const HouseImage({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Stack(
        children: [
          Image.asset(
            "assets/images/house1.png",
            fit: BoxFit.cover,
            height: 304,
          ),
          Container(
            height: 304,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0x000D0D0D),
                  Color(0xFF000000),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.38, 1.0],
              ),
            ),
          ),
          Positioned(
            top: 20.0,
            left: 20.0,
            child: Container(
              padding: const EdgeInsets.all(0),
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.24),
                  borderRadius: BorderRadius.circular(100)),
              child: Center(
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 20.0,
                      ))),
            ),
          ),
          Positioned(
            top: 20.0,
            right: 20.0,
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.24),
                  borderRadius: BorderRadius.circular(100)),
              child: const Center(
                child: Icon(
                  Icons.bookmark_outline,
                  color: Colors.white,
                  size: 24.0,
                ),
              ),
            ),
          ),
          const Positioned(
            bottom: 75.0, // Adjust as needed
            left: 20.0,
            child: Text(
              "Dreamsville House",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none,
                shadows: [
                  Shadow(
                    offset: Offset(2.0, 2.0),
                    blurRadius: 3.0,
                    color: Color.fromARGB(150, 0, 0, 0),
                  ),
                ],
              ),
            ),
          ),
          const Positioned(
            bottom: 55.0, // Adjust as needed
            left: 20.0,
            child: Text(
              "Jl. Sultan Iskandar Muda, Jakarta selatan",
              style: TextStyle(
                color: Colors.white,
                fontSize: 12.0,
                fontWeight: FontWeight.normal,
                decoration: TextDecoration.none,
                shadows: [
                  Shadow(
                    offset: Offset(1.0, 1.0),
                    blurRadius: 2.0,
                    color: Color.fromARGB(150, 0, 0, 0),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
              bottom: 20.0,
              left: 20.0,
              child: Row(
                children: [
                  const Icon(
                    Icons.airline_seat_individual_suite_rounded,
                    size: 24,
                    color: Colors.white,
                  ),
                  const Text(
                    " 6 Bedroom",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        decoration: TextDecoration.none),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Image.asset(
                    "assets/icons/bath.png",
                    height: 18,
                    width: 18,
                    color: Colors.white,
                  ),
                  const Text(
                    " 4 Bathroom",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        decoration: TextDecoration.none),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}

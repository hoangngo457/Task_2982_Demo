import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BestForYou extends StatelessWidget {
  const BestForYou({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 70,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  "assets/images/house2.png",
                  width: 74,
                  height: 70,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    "Orchad House",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        decoration: TextDecoration.none),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  const Text(
                    "Rp. 2.500.000.000 / Year",
                    style: TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(255, 10, 142, 217),
                        decoration: TextDecoration.none),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Icon(
                        Icons.airline_seat_individual_suite_rounded,
                        size: 24,
                        color: Color.fromARGB(255, 133, 133, 133),
                      ),
                      const Text(
                        " 6 Bedroom",
                        style: TextStyle(
                            fontSize: 12,
                            color: Color.fromARGB(255, 133, 133, 133),
                            decoration: TextDecoration.none),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Image.asset(
                        "assets/icons/bath.png",
                        height: 24,
                        width: 24,
                      ),
                      const Text(
                        "4 Bathroom",
                        style: TextStyle(
                            fontSize: 12,
                            color: Color.fromARGB(255, 133, 133, 133),
                            decoration: TextDecoration.none),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 70,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  "assets/images/house3.png",
                  width: 74,
                  height: 70,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    "The Hollies House",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        decoration: TextDecoration.none),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  const Text(
                    "Rp. 2.000.000.000/Year",
                    style: TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(255, 10, 142, 217),
                        decoration: TextDecoration.none),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Icon(
                        Icons.airline_seat_individual_suite_rounded,
                        size: 24,
                        color: Color.fromARGB(255, 133, 133, 133),
                      ),
                      const Text(
                        " 5 Bedroom",
                        style: TextStyle(
                            fontSize: 12,
                            color: Color.fromARGB(255, 133, 133, 133),
                            decoration: TextDecoration.none),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Image.asset(
                        "assets/icons/bath.png",
                        height: 24,
                        width: 24,
                      ),
                      const Text(
                        "2 Bathroom",
                        style: TextStyle(
                            fontSize: 12,
                            color: Color.fromARGB(255, 133, 133, 133),
                            decoration: TextDecoration.none),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class HomeCategory extends StatefulWidget {
  const HomeCategory({super.key});

  @override
  State<HomeCategory> createState() => HomeCategoryState();
}

class HomeCategoryState extends State<HomeCategory> {
  String _selectedItem = 'House';

  final List<String> _sortOptions = [
    'House',
    'Apartment',
    'Hotel',
    'Villa',
    'Cottage'
  ];

  void _initState(String option) {
    setState(() {
      _selectedItem = option;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Material(
            child: Wrap(
          spacing: 5.0,
          children: _sortOptions.map((option) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  _selectedItem = option;
                });
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 25.0, vertical: 10.0),
                decoration: BoxDecoration(
                  gradient: _selectedItem == option
                      ? const LinearGradient(
                          colors: [
                            Color(0xFFA0DAFB),
                            Color(0xFF0A8ED9),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          stops: [0.01, 1.0],
                        )
                      : null,
                  color: _selectedItem != option
                      ? const Color.fromARGB(255, 247, 247, 247)
                      : null,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Center(
                  child: Text(
                    option,
                    style: TextStyle(
                      color: _selectedItem == option
                          ? Colors.white
                          : const Color.fromARGB(255, 133, 133, 133),
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            );
          }).toList(),
        )));
  }
}

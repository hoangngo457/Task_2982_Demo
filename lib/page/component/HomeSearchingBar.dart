import 'package:flutter/cupertino.dart';

class HomeSeachingBar extends StatelessWidget {
  const HomeSeachingBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: CupertinoSearchTextField(
              placeholder: "Search address, or near you ",
              style: const TextStyle(fontSize: 14),
              borderRadius: BorderRadius.circular(0),
              backgroundColor: const Color.fromARGB(255, 247, 247, 247),
              //backgroundColor: Colors.red,
              padding: const EdgeInsets.all(15),
              prefixIcon: const Padding(
                padding: EdgeInsets.only(left: 15),
                child: Icon(CupertinoIcons.search),
              ),
              onTap: () {},
            ),
          ),
          Container(
            padding: const EdgeInsets.only(right: 20),
            child: GestureDetector(
              onTap: () {
                print("Pressed");
              },
              child: Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFFA0DAFB),
                      Color(0xFF0A8ED9),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.01, 1.0],
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                    child: Image.asset(
                  "assets/icons/setting-lines.png",
                  width: 16,
                  height: 16,
                )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

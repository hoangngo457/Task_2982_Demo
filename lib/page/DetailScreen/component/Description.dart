import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DescriptionAndUser extends StatefulWidget {
  const DescriptionAndUser({super.key});

  @override
  State<DescriptionAndUser> createState() => DescriptionAndUserState();
}

class DescriptionAndUserState extends State<DescriptionAndUser> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ExpandableText(
          text:
              'The 3 level house that has a modern design, has a large pool and a garage that fits up to four cars and some motobike',
          maxLength: 99,
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                "assets/images/avatar.png",
                fit: BoxFit.cover,
                width: 40,
                height: 40,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Garry Allen",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      decoration: TextDecoration.none),
                ),
                Text(
                  "Owner",
                  style: TextStyle(
                      color: Color.fromARGB(255, 133, 133, 133),
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none),
                )
              ],
            ),
            const Spacer(),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(177, 10, 142, 217),
                  ),
                  padding: const EdgeInsets.all(10),
                  child: const Icon(
                    Icons.phone,
                    color: Colors.white,
                    size: 24,
                  )),
            ),
            const SizedBox(
              width: 10,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(177, 10, 142, 217),
                  ),
                  padding: const EdgeInsets.all(10),
                  child: const Icon(
                    Icons.message,
                    color: Colors.white,
                    size: 24,
                  )),
            ),
          ],
        )
      ],
    );
  }
}

class ExpandableText extends StatefulWidget {
  final String text;
  final int maxLength;

  const ExpandableText({super.key, required this.text, this.maxLength = 100});

  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: isExpanded
            ? widget.text
            : '${widget.text.substring(0, widget.maxLength)}...',
        style: const TextStyle(color: Colors.black),
        children: [
          if (!isExpanded)
            TextSpan(
              text: ' Show More',
              style: const TextStyle(color: Colors.blue),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  setState(() {
                    isExpanded = !isExpanded;
                  });
                },
            ),
        ],
      ),
    );
  }
}

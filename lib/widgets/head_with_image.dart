import 'package:flutter/material.dart';

class HeadWithImage extends StatelessWidget {
  final String text;
  final String url;
  final double imageWidth;
  final double rightMargin;

  const HeadWithImage(
      {super.key,
      required this.text,
      required this.url,
      required this.imageWidth,
      required this.rightMargin});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(width: imageWidth, child: Image.asset(url)),
        Container(
          margin: EdgeInsets.only(right: rightMargin),
          child: Text(
            text,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 26),
          ),
        )
      ],
    );
  }
}

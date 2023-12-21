import 'package:flutter/material.dart';

class HeadWithImage extends StatelessWidget {
  final String text;
  final String url;
  final double imageWidth;
  final double rightMargin;
  final Color color;
  final double topPadding;
  final double fontSize;

  const HeadWithImage({
    super.key,
    required this.text,
    required this.url,
    required this.imageWidth,
    required this.rightMargin,
    required this.color,
    required this.topPadding,
    required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: topPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(width: imageWidth, child: Image.asset(url)),
          Container(
            margin: EdgeInsets.only(right: rightMargin),
            child: Text(
              text,
              style: TextStyle(
                  color: color, fontWeight: FontWeight.bold, fontSize: fontSize),
            ),
          )
        ],
      ),
    );
  }
}

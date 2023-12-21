import 'package:flutter/material.dart';
import "widgets.dart" as widgets;

class Card extends StatelessWidget {
  final Widget toRoute;
  final String text;
  final String url;
  final double imageWidth;
  final double rightMargin;
  final Color color;

  const Card(
      {super.key,
      required this.toRoute,
      required this.text,
      required this.url,
      required this.imageWidth,
      required this.rightMargin,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => toRoute));
        },
        child: Container(
          margin: const EdgeInsets.only(top: 18),
          width: 350,
          height: 150,
          decoration: const BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.all(Radius.circular(30))),
          child: widgets.HeadWithImage(
            text: text,
            url: url,
            imageWidth: imageWidth,
            rightMargin: rightMargin,
            color: color,
            topPadding: 0,
            fontSize: 26,
          ),
        ),
      ),
    );
  }
}

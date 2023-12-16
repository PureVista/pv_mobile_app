import 'package:flutter/material.dart';

class Card extends StatelessWidget {
  final Widget toRoute;
  final String text;
  final String url;
  final double imageWidth;
  final double rightMargin;

  const Card(
      {super.key,
      required this.toRoute,
      required this.text,
      required this.url,
      required this.imageWidth,
      required this.rightMargin});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => toRoute));
        },
        child: Container(
          width: 350,
          height: 150,
          decoration: const BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.all(Radius.circular(30))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(width: imageWidth, child: Image.asset(url)),
              Container(
                margin: EdgeInsets.only(right: rightMargin),
                child: Text(
                  text,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 26),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

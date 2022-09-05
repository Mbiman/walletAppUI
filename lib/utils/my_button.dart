import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String cardImage;
  final String cardText;

  const MyButton({
    Key? key,
    required this.cardImage,
    required this.cardText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //icon
        Container(
          height: 88,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            // color: Colors.grey[100],
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                color: Colors.white,
                blurRadius: 30,
                spreadRadius: 10,
              ),
            ],
          ),
          child: Center(child: Image.asset(cardImage)),
        ),
        const SizedBox(height: 4),
        //text
        Text(
          cardText,
          style: TextStyle(
            fontFamily: 'Ubuntu',
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.grey[700],
          ),
        )
      ],
    );
  }
}

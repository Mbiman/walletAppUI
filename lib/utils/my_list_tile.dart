import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final String imagePath;
  final String title;
  final String details;

  const MyListTile({
    Key? key,
    required this.imagePath,
    required this.details,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 70,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset(imagePath),
              ),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontFamily: 'Ubuntu',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    details,
                    style: TextStyle(
                      fontFamily: 'Ubuntu',
                      fontSize: 15,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Icon(Icons.arrow_forward_ios_rounded),
        ],
      ),
    );
  }
}

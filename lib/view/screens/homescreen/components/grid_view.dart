import 'package:flutter/material.dart';

Widget gridviewBox(String img, String name) {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: Container(
      width: 215,
      decoration: BoxDecoration(
        color: const Color(0xff31B196),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 25),
            height: 130,
            width: 130,
            decoration: const BoxDecoration(
              color: Colors.grey,
              shape: BoxShape.circle,
            ),
            child: CircleAvatar(
              backgroundImage: AssetImage(img),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            name,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: Colors.white),
          ),
        ],
      ),
    ),
  );
}

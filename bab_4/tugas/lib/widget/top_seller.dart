import 'package:flutter/material.dart';

Widget TopSeller(String imagePath, String name, double rating) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8.0),
    child: Stack(
      clipBehavior: Clip.none, // Allow content to overlap
      children: [
        // Profile image
        ClipOval(
          child: Container(
            width: 80,
            height: 80,
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black26, // Shadow color
                  blurRadius: 6.0, // Shadow blur radius
                  spreadRadius: 2.0, // Shadow spread radius
                  offset: Offset(0, 2), // Shadow position
                ),
              ],
            ),
            child: ClipOval(
              child: Image.asset(
                ('images/download.png'),
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        // Box for name and rating (this will overlap the bottom of the profile image)
        Positioned(
          bottom: 40, // Adjust to make sure the box doesn't overlap too much
          left: 0,
          right: 0,
          child: Container(
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.symmetric(horizontal: 10.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.0),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 4.0,
                  offset: Offset(0, 2), // Position the shadow
                ),
              ],
            ),
            child: Column(
              children: [
                // Display the name of the store
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                // Display one star and rating next to it
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 16,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      rating
                          .toString(), // Display the rating number next to the star
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

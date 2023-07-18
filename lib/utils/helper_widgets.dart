import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/screens/second_screen.dart';

Widget cuisinesWidget(String name, String title) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(
        height: 85,
        width: 85,
        padding: const EdgeInsets.only(right: 12),
        child: Image.asset(name),
      ),
      Text(title),
    ],
  );
}

Widget restaurantWidget(BuildContext context) {
  return InkWell(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => SecondScreen(),
        ),
      );
    },
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Colors.grey.shade300,
        ),
      ),
      child: Column(
        children: [
          Image.asset('assets/images/restaurants.png'),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Casa Bella Vista',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    Icon(Icons.bookmark_outline),
                  ],
                ),

                // stars ans review
                Row(
                  children: [
                    // stars
                    SizedBox(
                      width: 97,
                      child: Row(
                        children: List.generate(
                          4,
                          (index) => Icon(
                            Icons.star_rounded,
                            color: Colors.orange.shade700,
                          ),
                        ),
                      ),
                    ),
                    Icon(
                      Icons.star_rounded,
                      color: Colors.grey.shade300,
                    ),

                    // reviews text
                    Text(
                      '4.1 (12033 Delivery Reviews)',
                      style:
                          TextStyle(color: Colors.grey.shade300, fontSize: 12),
                    ),
                  ],
                ),

                const SizedBox(height: 5),

                Text(
                  'Fast Food, Chinese, Egg soup',
                  style: TextStyle(color: Colors.grey.shade400),
                ),

                const SizedBox(height: 5),

                const Text(
                  'Sector 10, Chandigarh',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 5),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

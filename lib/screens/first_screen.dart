import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/utils/cuisines.dart';
import 'package:food_delivery_app_ui/utils/helper_widgets.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            appBar(),
            const SizedBox(height: 20),
            searchBar(),
            const SizedBox(height: 20),
            offersList(),
            const SizedBox(height: 20),
            trendingCuisines(),
            // const SizedBox(height: 10),
            restaurantsNearby(),
          ],
        ),
      ),
    );
  }

  Widget restaurantsNearby() {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Column(
        children: [
          // Text Widget
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Restaurants Nearby',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Discover unique tastes near you',
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ],
              ),
              Row(
                children: [
                  const Text('See All'),
                  const SizedBox(width: 10),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.orange.shade700,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ],
              ),
            ],
          ),

          // Restaurants
          SizedBox(
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: restaurantWidget(context),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget trendingCuisines() {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Trending Cuisines Around You',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 120,
            child: ListView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: [
                cuisinesWidget(indian, 'Indian'),
                cuisinesWidget(italian, 'Chinese'),
                cuisinesWidget(indian, 'Japanese'),
                cuisinesWidget(italian, 'Italian'),
                cuisinesWidget(indian, 'Indian'),
                cuisinesWidget(chinese, 'Chinese'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget offersList() {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        padding: const EdgeInsets.only(left: 16),
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Image.asset('assets/images/offerimage.png'),
          );
        },
      ),
    );
  }

  Widget searchBar() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: TextFormField(
        decoration: InputDecoration(
          suffixIcon: Icon(
            Icons.equalizer_rounded,
            color: Colors.orange.shade700,
          ),
          prefixIcon: const Icon(
            Icons.search_rounded,
            color: Colors.black,
            size: 28,
          ),
          hintText: 'Search by Food or Restaurant',
          hintStyle: TextStyle(color: Colors.grey.shade400, fontSize: 14),
          filled: true,
          fillColor: Colors.grey.shade300,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(
              color: Colors.grey.shade300,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(
              color: Colors.grey.shade300,
              width: 2.0,
            ),
          ),
        ),
      ),
    );
  }

  Widget appBar() {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Location
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.location_on_rounded,
                    color: Colors.orange.shade700,
                  ),
                  const SizedBox(
                    width: 9,
                  ),
                  const Text(
                    'Bob Street',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('2612 Marley Down Road 23782'),
            ],
          ),

          Row(
            children: [
              // Cart Icon
              const Icon(Icons.shopping_cart),

              const SizedBox(width: 16),
              // User Icon
              Image.asset(
                height: 38,
                'assets/images/user.png',
                fit: BoxFit.cover,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

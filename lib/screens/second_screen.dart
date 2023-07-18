import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            topImage(),
            const SizedBox(height: 20),
            welcomeOfferCard(context),
            const SizedBox(height: 12),
            restaurantDetails(),
            const SizedBox(height: 20),
            mealsType(),
            addMealList(),
          ],
        ),
      ),
    );
  }

  addMealList() {
    return SizedBox(
      child: ListView(
        shrinkWrap: true,
        children: [
          addMealCard(),
          addMealCard(),
          addMealCard(),
        ],
      ),
    );
  }

  Widget addMealCard() {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 20),
      child: Row(
        children: [
          Image.asset('assets/images/addmeal.png', scale: 5.5),
          const SizedBox(
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Mixed Poached Egg...',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Icon(
                    Icons.bookmark_outline,
                  ),
                ],
              ),
              Text(
                'Chinese',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
              Row(
                children: [
                  Icon(Icons.star_rounded),
                  Text(
                    '4.9  .  \$120',
                    style: TextStyle(fontSize: 18, color: Colors.grey.shade700),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Stack(
                children: [
                  Container(
                    width: 90,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Center(
                      child: Text(
                        'ADD',
                        style: TextStyle(
                            fontSize: 22, color: Colors.grey.shade700),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 4,
                    top: 4,
                    child: Icon(
                      Icons.add_rounded,
                      size: 12,
                      color: Colors.red,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: MediaQuery.of(context).size.width / 2,
                child: const Divider(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget mealsType() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.orange.shade700,
              borderRadius: BorderRadius.circular(6),
            ),
            height: 40,
            width: 100,
            child: const Center(
              child: Text(
                'Best-sellers',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(6),
            ),
            height: 40,
            width: 100,
            child: Center(
              child: Text(
                'Burgers',
                style: TextStyle(color: Colors.grey.shade700),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(6),
            ),
            height: 40,
            width: 100,
            child: Center(
              child: Text(
                'Salads',
                style: TextStyle(color: Colors.grey.shade700),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget restaurantDetails() {
    return Padding(
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
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
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
                style: TextStyle(color: Colors.grey.shade400, fontSize: 12),
              ),
            ],
          ),

          const SizedBox(height: 5),

          Text(
            'Fast Food, Chinese, Egg soup',
            style: TextStyle(color: Colors.grey.shade500),
          ),

          const SizedBox(height: 5),

          Text(
            'Sector 10, Chandigarh    .  36 min',
            style: TextStyle(
              color: Colors.grey.shade700,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 5),
        ],
      ),
    );
  }

  Widget welcomeOfferCard(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Container(
        height: 30,
        width: MediaQuery.of(context).size.width / 2,
        decoration: BoxDecoration(
          color: Colors.orange.shade700,
          borderRadius: BorderRadius.circular(6),
        ),
        child: const Center(
          child: Text(
            '40% OFF - use code WELCOME',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }

  Widget topImage() {
    return Stack(
      children: [
        Image.asset('assets/images/meal.png'),
        Positioned(
          left: 20,
          top: 55,
          child: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(6)),
              child: Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Colors.grey,
                size: 15,
              ),
            ),
          ),
        ),
        const Positioned(
          right: 30,
          top: 60,
          child: Icon(
            Icons.shopping_cart_rounded,
            color: Colors.white,
            size: 24,
          ),
        ),
      ],
    );
  }
}

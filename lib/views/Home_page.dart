import 'package:exam_flutter_program/product_data/product.dart';
import 'package:exam_flutter_program/views/Detail_page.dart';
import 'package:flutter/material.dart';

class Home_page extends StatefulWidget {
  const Home_page({super.key});
  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {
            Navigator.of(context).pushNamed('meal_page');
          }, icon: const Icon(Icons.card_travel_outlined),
          ),
        ],
        backgroundColor: Colors.blue,
        title: const Center(
          child: Text(
            "HOME PAGE",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      // BODY
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: allRecipies
                      .map(
                        (e) => Padding(
                          padding: const EdgeInsets.all(18),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed('Detail_page',arguments: e);
                              },
                            child: Container(
                              height: 360,
                              width: 250,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: Colors.black,
                                  width: 3,
                                  strokeAlign: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  bottomRight: Radius.circular(40),
                                  bottomLeft: Radius.circular(40),
                                ),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black,
                                    spreadRadius: 6,
                                    blurRadius: 7,
                                    offset: Offset(3, 5),
                                  ),
                                ],
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image(
                                    image: NetworkImage(e['image']),
                                  ),
                                 Text(
                                      e['name'],
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                              
                                  Text(
                                    "Difficulty : ${e['difficulty']}",
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: IconButton(
                                          onPressed: () {
                                            if(!favorites.contains(e))
                                            {
                                              favorites.add(e);
                                            }
                                            
                                          },
                                          icon: const Icon(
                                              Icons.favorite_border_rounded),
                                        ),
                                      ),
                                      Expanded(
                                        child: IconButton(onPressed: () 
                                        {
                                             Meal.add(e);
                                        }, icon: const Icon(Icons.card_travel_outlined)),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                      .toList()),
            ),
          ],
        ),
      ),

      // BUTTON
      bottomSheet: Padding(
        padding: const EdgeInsets.only(left: 50, right: 50, bottom: 0.7),
        child: Container(
          height: 48,
          width: BouncingScrollSimulation.maxSpringTransferVelocity,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Row(
            children: [
              Expanded(
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('Favorites_page');
                  },
                  icon: const Icon(Icons.favorite),
                ),
              ),
              Expanded(
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('meal_page');
                  },
                  icon: const Icon(Icons.card_travel_outlined),
                ),
              ),
              Expanded(
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('recipe_page');
                  },
                  icon: const Icon(Icons.receipt_rounded),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

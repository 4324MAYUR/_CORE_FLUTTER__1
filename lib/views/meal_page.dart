import 'package:exam_flutter_program/product_data/product.dart';
import 'package:flutter/material.dart';
import 'package:exam_flutter_program/views/Detail_page.dart';
import 'package:exam_flutter_program/views/extension.dart';

class meal_page extends StatefulWidget {
  const meal_page({super.key});

  @override
  State<meal_page> createState() => _meal_pageState();
}

class _meal_pageState extends State<meal_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop('Home_page');
          },
          icon: const Icon(Icons.arrow_back_sharp),
        ),
        backgroundColor: Colors.blue,
        title: const Center(
          child: Text("MEAL PAGE")),
      ),
      body:  Padding(
        padding: const EdgeInsets.all(14),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: Meal.map((e) {
              return  Padding(
                padding: const EdgeInsets.all(12),
                child: Container(
                  height: 420,
                  width: 240,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 5,
                        offset: Offset(4,5),
                        spreadRadius: 3
                      ),
                    ],
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.black,
                    width: 4,
                    strokeAlign: 1,)
                  ),
                  child:  Column(
                    children: [
                      Container(
                         height: 160,
                         width: 240,
                         decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40)
                         ),
                         child: Image(image: NetworkImage(e['image']),
                         fit: BoxFit.cover,
                         
                         ),
          
                      ),
                      5.toHeight(),
                      Container(
                        height: 240,
                        width: 240,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text(e['name'],
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                              ),
                            ),
                            Expanded(
                              child: Text("MealType : ${e['mealType'].toString()}",
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                              ),
                            ),
                             Expanded(
                              child: Text("PrepTimeMin. : ${e['prepTimeMinutes'].toString()}",
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                              ),
                            ),
                            Expanded(
                              child: Text("CookTimeMin. : ${e['cookTimeMinutes'].toString()}",
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                              ),
                            ),
                             Expanded(
                              child: Text("Servings : ${e['servings'].toString()}",
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                              ),
                            ),
                            Expanded(
                              child: Text("Cuisine : ${e['cuisine'].toString()}",
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                              ),
                            ),
                            Expanded(
                              child: Text("CaloriesPerServing : ${e['caloriesPerServing'].toString()}",
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                              ),
                            ),
                            Expanded(
                              child: Text("Difficulty : ${e['difficulty'].toString()}",
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                              ),
                            ),
                            Expanded(
                              child: Text("ReviewCount : ${e['reviewCount'].toString()}",
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                              ),
                            ),

                              Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(1),
                                    child: IconButton(onPressed: () {
                                      Meal.remove(e);
                                      setState(() {
                                        
                                      });
                                    }, 
                                    icon: const Icon(Icons.delete),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                          ),
                      ),
                     
                    ],
                  ),
                ),
              );
             }).toList(),
          ),
        ),
      ),
    );
  }
}
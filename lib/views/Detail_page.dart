import 'package:exam_flutter_program/product_data/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:exam_flutter_program/views/extension.dart';
class Detail_page extends StatefulWidget {
  const Detail_page({super.key});

  @override
  State<Detail_page> createState() => _Detail_pageState();
}

class _Detail_pageState extends State<Detail_page> {
  @override
  Widget build(BuildContext context) {
    Map e = ModalRoute.of(context)?.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop(context);
          },
          icon: const Icon(Icons.arrow_back_sharp),
        ),
        backgroundColor: Colors.blue,
        title: const Text("DETAIL PAGE"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 2,
                left: 50,
                right: 50,
              ),
              child: Container(
                height: 430,
                width: BouncingScrollSimulation.maxSpringTransferVelocity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.black,
                    width: 3,
                    strokeAlign: -2,
                  ),


                  borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(50),bottomRight: Radius.circular(50)),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black,
                      offset: Offset(4, 4),
                      blurRadius: 4,
                      spreadRadius: 4,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Image(
                      image:NetworkImage(e['image']), 
                    ),
                    10.toHeight(),
                     Text(e['name'].toString(),
                     style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                     ),
                     ),
                  ],
                ),
              ),
            ),
            16.toHeight(),
            Container(
              width: BouncingScrollSimulation.maxSpringTransferVelocity,
              height: 220,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                  strokeAlign: 1,
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black,
                    offset: Offset(3, 4),
                    spreadRadius: 3,
                    blurRadius: 4,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8,left: 8,),
                    child: Text("Ingredients : ${e['ingredients']}",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                    ),
                  ),
                  7.toHeight(),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text("ReviewCount : ${e['reviewCount']}",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                  ),
                  7.toHeight(),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text("Rating : ${e['rating']}",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                  ),
                  7.toHeight(),
                  Row(
                    children: [
                      Expanded(
                        child: IconButton(onPressed: () {
                          if(!favorites.contains(e))
                          {
                            favorites.add(e);
                          }
                        }, 
                        icon: const Icon(Icons.favorite_border),
                        ),
                      ),
                      Expanded(
                        child: IconButton(
                          onPressed: () {
                          if(!Meal.contains(e))
                          {
                            Meal.add(e);
                          }
                        }, 
                        icon: const Icon(Icons.card_travel_outlined),
                        ),
                      ),
                      Expanded(
                        child: IconButton(
                          onPressed: () {
                          if(!recipe.contains(e))
                          {
                            recipe.add(e);
                          }
                        }, 
                        icon: const Icon(Icons.receipt_rounded),
                        ),
                      ),
                    ],
                  ),
                    const Row(
                    children: [
                       Expanded(
                         child: Center(
                           child: Text("Like Page Add",
                                                 style: TextStyle(
                            fontWeight: FontWeight.bold,
                                                 ),
                                                 ),
                         ),
                       ),
                     
                      Expanded(
                         child: Center(
                           child: Text("Meal Page Add",
                                                 style: TextStyle(
                            fontWeight: FontWeight.bold,
                                                 ),
                                                 ),
                         ),
                       ),
                       Expanded(
                         child: Center(
                           child: Text("Recipe Page Add",
                                                 style: TextStyle(
                            fontWeight: FontWeight.bold,
                                                 ),
                                                 ),
                         ),
                       ),
                    ],
                  ),

                ],
              ),
            
            ),
          ],
        ),
      ),
    );
  }
}

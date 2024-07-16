import 'package:exam_flutter_program/product_data/product.dart';
import 'package:exam_flutter_program/views/extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Favorites_page extends StatefulWidget {
  const Favorites_page({super.key});

  @override
  State<Favorites_page> createState() => _Favorites_pageState();
}

class _Favorites_pageState extends State<Favorites_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Center(
          child: Text(
            "FAVORITE PAGE",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body:  Padding(
        padding: const EdgeInsets.all(18),
        child: SingleChildScrollView(

          child: Column(
            children: favorites.map((e) {
              return  Padding(
                padding: const EdgeInsets.all(18),
                child: Container(
                  height: 160,
                  width: BouncingScrollSimulation.maxSpringTransferVelocity,
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
                    width: 2,
                    strokeAlign: 1,)
                  ),
                  child:  Row(
                    children: [
                      Container(
                         height: 160,
                         width: 160,
                         decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40)
                         ),
                         child: Image(image: NetworkImage(e['image']),),
          
                      ),
                      1.toWidth(),
                      Container(
                        height: 160,
                        width: 260,
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
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style:  const TextStyle(
                                                        
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                              ),
                            ),
                            Expanded(
                              child: Text("Cuisine : ${e['cuisine'].toString()}",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style:  const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                              ),
                            ),
                            Expanded(
                              child: Text("Difficulty : ${e['difficulty'].toString()}",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style:  const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                              ),
                            ),
                            Expanded(
                              child: Text("Tags : ${e['tags'].toString()}",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style:  const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 180,bottom: 5),
                              child: IconButton(onPressed: () {
                                favorites.remove(e);
                                setState(() {
                                  
                                });
                              }, 
                              icon: const Icon(Icons.delete)),
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

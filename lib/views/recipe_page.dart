import 'package:exam_flutter_program/views/extension.dart';
import 'package:exam_flutter_program/product_data/product.dart';
import 'package:flutter/material.dart';

class recipe_page extends StatefulWidget {
  const recipe_page({super.key});

  @override
  State<recipe_page> createState() => _recipe_pageState();
}

class _recipe_pageState extends State<recipe_page> 
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("RECIPE PAGE")),
        backgroundColor: Colors.blue,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop('recipe_page');
          }, 
          icon: const Icon(Icons.arrow_back_sharp))
        ),
        body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: recipe.map((e) {
              return  Padding(
                padding: const EdgeInsets.all(12),
                child: Container(
                  height: 480,
                  width: 320,
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
                         height: 190,
                         width: 320,
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
                        width: 320,
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
                            10.toHeight(),
                            Text("Instructions : ${e['instructions']}",
                            maxLines: 8,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                              Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 16,right: 16,top: 10),
                                    child: IconButton(onPressed: () {
                                      recipe.remove(e);
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
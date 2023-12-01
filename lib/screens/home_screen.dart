import 'package:flutter/material.dart';
import 'package:safarnama/screens/detail_screen.dart';
import 'package:safarnama/screens/recommended_card.dart';

import '../models/place_model.dart';
import '../widgets/category_card.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left:8.0),
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left:8.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 18,
                      backgroundImage: AssetImage("assets/account_image.jpg"),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    RichText(text: TextSpan(
                      text: "Hello",
                      style: TextStyle(color: Colors.black),
                      children: [
                        TextSpan(
                          text: ", Fahad",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18
                          )
                        )
                      ]
                    ))
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
           Text("Explore your Destination",
             style: TextStyle(
               fontSize: 26,
               fontWeight: FontWeight.bold),),
              SizedBox(
                height: 20,
              ),
              Material(
                borderRadius: BorderRadius.circular(100),
                elevation: 5,
                child: Container(
                  decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0,right: 16),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "Search Your Destination",
                              prefixIcon: Icon(Icons.search),
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none
                            ),
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.orange,
                          radius: 22,
                          child: Icon(
                            Icons.sort_by_alpha_sharp,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text("Category",
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold),),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 70,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      children: [
                        CategoryCard(
                          press: (){},
                          image: "assets/mountains.jpg",
                          title:"Mountains" ,
                        ),
                        CategoryCard(
                          press: (){},
                          image: "assets/forest.jpg",
                          title:"Forest" ,
                        ),
                        CategoryCard(
                          press: (){},
                          image: "assets/dessert.jpg",
                          title:"Desert" ,
                        ),
                        CategoryCard(
                          press: (){},
                          image: "assets/waterfalls.jpg",
                          title:"Waterfalls" ,
                        ),
                        CategoryCard(
                          press: (){},
                          image: "assets/beach.jpg",
                          title:"Beach" ,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text("Recommended",
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold),),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 350,
                child: ListView.builder(itemCount: places.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index){
                  return   Padding(
                    padding: const EdgeInsets.only(left:5,right: 15),
                    child: Row(
                      children: [
                        RecommendedCard(placeInfo: places[index],press: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailScreen(placeInfo: places[index],)));},)
                      ],
                    ),
                  );
    }))

            ],
          ),
        ),
      ),
    );
  }
}



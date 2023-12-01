import 'package:flutter/material.dart';
import 'package:safarnama/models/place_model.dart';
import 'package:safarnama/screens/home_screen.dart';
class DetailScreen extends StatefulWidget {
  final PlaceInfo placeInfo;
  const DetailScreen({super.key, required this.placeInfo});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Image.asset(widget.placeInfo.image,fit:BoxFit.fill,width: double.infinity,height: MediaQuery.of(context).size.height*0.5,),
          SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));},
                        child: Material(
                          elevation:5,
                          borderRadius: BorderRadius.circular(100),
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Container(
                              height:25,
                              width: 25,

                              decoration: BoxDecoration(
                                color: Colors.orange,
                                shape: BoxShape.circle

                              ),
                              child: Center(child: Icon(Icons.arrow_back_ios,color: Colors.white,size: 16,)),
                            ),
                          ),
                        ),
                      ),
                      Material(
                        elevation:5,
                        borderRadius: BorderRadius.circular(100),
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Container(
                            height:25,
                            width: 25,

                            decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle

                            ),
                            child: Center(child: Icon(Icons.bookmark_rounded,color: Colors.orange,size: 25,)),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
                SizedBox(
                    height: MediaQuery.of(context).size.height*0.3,
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(widget.placeInfo.name,
                              style: TextStyle(
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold),),
                            SizedBox(
                              height: 12,
                            ),
                            Row(
                              children: [
                                Icon(Icons.location_on,color:Colors.orange,),
                                SizedBox(
                                  width: 12,
                                ),
                                Text(widget.placeInfo.location,style: TextStyle(color: Colors.grey,fontSize: 20),)
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text("Trip Details",
                              style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold),),
                            SizedBox(
                              height: 10,
                            ),
                            Text(widget.placeInfo.desc,style: TextStyle(color: Colors.grey,fontSize: 18),),
                            SizedBox(
                              height: 10,
                            ),
                            Divider(height: 5,color: Colors.black,),
                            Row(
                              children: [
                                Text("Duration:",style: TextStyle(color: Colors.grey,fontSize: 20),),

                                SizedBox(
                                  width: 12,
                                ),
                                Expanded(child: Text("${widget.placeInfo.days} Days",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),))
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text("Distance:",style: TextStyle(color: Colors.grey,fontSize: 20),),

                                SizedBox(
                                  width: 12,
                                ),
                                Expanded(child: Text("${widget.placeInfo.distance} Kilometers",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),))
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            MaterialButton(onPressed: (){},child: Text("Book Trip!",style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold,fontSize: 22),),color: Colors.orange,minWidth: double.infinity,height: 55,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),)

                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

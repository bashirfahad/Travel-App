import 'package:flutter/material.dart';
import 'package:safarnama/screens/login_screen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
              image:DecorationImage( image:AssetImage("assets/image1.jpg"),
               fit: BoxFit.fill,
                
              ),),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                Colors.black.withOpacity(0.7),
                Colors.black87.withOpacity(0.7),
                ],
                )  ,
              ),
            ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: TextButton(onPressed:( )=>{ Navigator.push(context, MaterialPageRoute(builder: (context)=>MyForm()))},
                        child:Text("Continue",style: TextStyle(fontSize: 25),),
                      style: TextButton.styleFrom(foregroundColor: Colors.orange,
                          backgroundColor: Colors.black54),
               ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 100),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(left: 25,right: 25),
                  child: Container(
                    child: Text("        Book your Favourite \n Holiday Destination with us!",style: TextStyle(color: Colors.white70,fontSize: 25,fontWeight: FontWeight.bold),),
                  ),
                ),
              ),
            )

            
            
          ],
        ),
      ),
    );
  }
}

import 'splash_screen.dart';
import 'package:flutter/material.dart';
class ForgotClass extends StatelessWidget {
  const ForgotClass({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Forgot\nPassword',style: TextStyle(fontSize: 44,fontWeight:FontWeight.bold,color: Colors.orange,fontFamily:'Poppins')),
              TextFormField(
                decoration:  InputDecoration(
                    icon: const Icon(Icons.email_outlined),
                    hintText: ('Enter Your Email'),
                    labelText: ('Email')
                ),
              ),
              Container(
                padding:  EdgeInsets.only(left: 125.0, top: 40.0),
                child:  ElevatedButton(
                  onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>(SplashScreen()))) ;},
                  child: Text('Submit'),
                  style: ElevatedButton.styleFrom( primary: Colors.orange,foregroundColor: Colors.white,shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  )),

                ),
              ),



            ],

          ),

        ) ,

      ),
    );

  }
}

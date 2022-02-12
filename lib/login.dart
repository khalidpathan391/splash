import 'package:flutter/material.dart';
class Loginscreen extends StatelessWidget {
  const Loginscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      body: Container(
        child: ListView(
          children: [SizedBox(
            height: 30,),
             Image.asset("assets/images/Loginscreen.png",height: 200,width: 200,),
          SizedBox(height: 20,),
            Center(child: Text("Log in with your Mobile Number",style: TextStyle(color: Colors.lightBlue,fontSize: 25),),

            ),
            Container(
              decoration: BoxDecoration(
                color:Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [BoxShadow(
                    color:Colors.black,
                  blurRadius: 8.0,
                  offset: Offset(5,6)
                ),

                ]
              ),

              margin: EdgeInsets.all(20),
              child: Column(
                children: [
                  Container(
                  padding:EdgeInsets.only(left: 20),
                    margin: EdgeInsets.symmetric(horizontal: 30,vertical: 30),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(8)
                    ),
                    child:  TextField(
                      keyboardType: TextInputType.phone,
                      maxLength: 10,
                      decoration: InputDecoration(
                        counterText:"",
                        border: InputBorder.none,
                        prefixIcon: Text("+91"),
                        prefixIconConstraints: BoxConstraints(minHeight: 0,minWidth: 0),
                      ),
                    ),
              ),
SizedBox(height: 30,),
                //  ElevatedButton(onPressed: (){}, child:Text("Continue")
                   //   ),
                  Container(padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.green),
                      borderRadius: BorderRadius.circular(20),

                    ),
                    child: Text("Continue",style: TextStyle(color: Colors.blue),),

                  ),
                  SizedBox(height: 10,),
                ],
              )


            )

          ],
        ),

      ),

    );
  }
}


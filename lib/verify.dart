import 'package:flutter/material.dart';
import 'package:pin_entry_text_field/pin_entry_text_field.dart';
class Verify extends StatelessWidget {
   Verify({Key? key}) : super(key: key);
String? smsOTP;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      body: Container(
        child: ListView(
          children: [SizedBox(
            height: 30,),
            Image.asset("assets/images/verify.png",height: 200,width: 200,),
            SizedBox(height: 20,),
            Center(child: Text("Enter OTP On your Mobile Number",style: TextStyle(color: Colors.lightBlue,fontSize: 25),),

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

                    SizedBox(height: 30,),
                    PinEntryTextField(
                      showFieldAsBox: true,
                      fields: 6,
                      onSubmit: (text) {
                        smsOTP = text as String;
                      },
                    ),
                    //  ElevatedButton(onPressed: (){}, child:Text("Continue")
                    //
                    //   ),
                    SizedBox(height: 50,),
                    Row(
                      mainAxisAlignment:MainAxisAlignment.spaceEvenly,children: [

                      Container(padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.green),
                          borderRadius: BorderRadius.circular(20),

                        ),
                        child: Text("Resend",style: TextStyle(color: Colors.blue),),
                      ),
                      Container(padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.green),
                          borderRadius: BorderRadius.circular(20),

                        ),
                        child: Text("Continue",style: TextStyle(color: Colors.blue),),
                      ),
                    ],

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

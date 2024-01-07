import 'package:flutter/material.dart';
import 'package:login/pages/signup.dart';

void main(){
  runApp(login());
}

class login extends StatelessWidget {
  const login({super.key});

  @override
  
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //use '0xff' before applying color with hexcode.
        appBar: AppBar(backgroundColor: Color(0xffDCE0D9),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Login and Signup", style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold
              ),
              ),
              Icon(Icons.exit_to_app)
            ],
          ),
        ),
        body: Container(
          padding: EdgeInsets.only(
            top: 65,
          ),
          color: Color(0xffFBF6EF),
          child: Container(
            child: Center(
              child: Column(
                children: [
                  Text("Login",
                    style:TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    // paddding given by mediaquery so that it can be adjusted according to the device.
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height *0.09, right: 35, left: 35 ),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          TextField(
                            decoration: InputDecoration(
                              fillColor: Colors.grey.shade100,
                              filled: true,
                              hintText: 'Email',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)
                              )
                            ),
                          ),
                          SizedBox(
                            height: 30
                          ),

                          TextField(
                            // To hide the content such as password.
                            obscureText: true,
                            decoration: InputDecoration(
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                hintText: 'Password',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)
                                )
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextButton(onPressed: () {},
                                style: OutlinedButton.styleFrom(
                                  side: BorderSide(width: 1.0)
                                ),
                                  child: Text(
                                  "Login",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),


                                  ),

                              ),

                              SizedBox(
                                width: 30,
                              ),
                              TextButton(onPressed: () {},
                                style: OutlinedButton.styleFrom(
                                    side: BorderSide(width: 1.0)
                                ),
                                child: Text(
                                  "Clear",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),


                                ), )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextButton(onPressed: (
                              ){
                           Navigator.push(
                               context,
                               MaterialPageRoute(builder: (context) => signup()),);
                          },

                              child: Text(
                                "New user?",
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Colors.black,
                                  fontSize: 18,
                                ),


                              ),)
                        ],
                      ),
                    ),
                  )
                ],
              ),

            ),

          ),
        ),
      ),

    );


  }

}



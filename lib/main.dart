import 'package:flutter/material.dart';
import 'package:assignment_flutter/colors.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

void main() => runApp(
  const MaterialApp(
    home: HomePage(),
    debugShowCheckedModeBanner: false,
  )
);

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              c1,c2,c3
            ]
            )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
            <Widget>[
              SizedBox(height: 80,),
              Padding(
              padding:EdgeInsets.all(20),
              child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:<Widget>[
                Text("Login",style: TextStyle(color: Colors.white,fontSize: 40),),
                SizedBox(height: 10,),
                Text("Welcome Back",style: TextStyle(color: Colors.white,fontSize: 20),)
              ],
              ),
              ),
              SizedBox(height: 20,),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(60),topRight: Radius.circular(60)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 60,),
                        Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [BoxShadow(
                              color: c4,
                              blurRadius: 20,
                              offset: Offset(0,10)
                            )]
                          ),
                          child: Column(
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(
                                    color: c5,
                                  ),),
                                ),
                              ),
                                SizedBox(height: 10,),
                                IntlPhoneField(
                                    decoration: InputDecoration(
                                    labelText: 'Phone Number',
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(),
                                    ),
                                ),
                                initialCountryCode: 'IN',
                                onChanged: (phone) {
                                    print(phone.completeNumber);
                                },
                            )
                          ]),
                        )
                      ],
                    ),
                  ),
              )
              )
            ]
            ),
        ),
    );
  }
}

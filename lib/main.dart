import 'package:assignment_flutter/dash.dart';
import 'package:assignment_flutter/firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:assignment_flutter/colors.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:assignment_flutter/dash.dart';

void main() => runApp(
   MaterialApp(
    home: HomePage(),
    debugShowCheckedModeBanner: false,
  )
);

class HomePage extends StatelessWidget {
  const HomePage({super.key});
Future<void> initializeDefault() async {
    FirebaseApp app = await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    TextEditingController passwordController = TextEditingController();

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
                            ),
                          ]
                          ),
                        ),
                        SizedBox(height: 60,),
                        SizedBox(
                          height:50,
                        child:ElevatedButton(
                          onPressed: () {
          showModalBottomSheet<void>(
            context: context,
            shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only( 
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
            builder: (BuildContext context) {
              return Container(
                height: 300,
                color: Colors.white,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10), // Add 10 pixels of padding horizontally
                      child: Text(
                        'Enter Password',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                  ),
                      SizedBox(height: 20),
                      Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(5),
                      ),
        child: Row(
          children: [
            Expanded(
              child: TextFormField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Password',
                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                  
                ),
              ),
            ),
            IconButton(
              icon: Icon(Icons.visibility),
              onPressed: () {
              },
            ),
          ],
        ),
      ),
      SizedBox(height: 20),
                      Center( 
                      child:ElevatedButton(
                        child: const Text('Verify Password'),
                        onPressed: () {
                          Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => dash()),);},
                          style: ElevatedButton.styleFrom(
                          backgroundColor: c1,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              )
                          ),
                      ),
                    ),
                    ],
                  ),
                ),
              );
            }
          );
  },
child: Padding(
    padding: EdgeInsets.symmetric(horizontal: 80),
    child: Text(
      'Proceed',
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    ),
  ),
  style: ElevatedButton.styleFrom(
    backgroundColor: c1,
     shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(80),
        )
  ),
  ),
  )],
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

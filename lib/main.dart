// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(backgroundColor: Color.fromARGB(255, 121, 98, 98),
            leading: Center(child: Text('Cancel')),
            title: Center(child: Text('Edit profile')),
            centerTitle: true,
            actions: [Center(child: Text('Save'))],

          ),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                child: Column(children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        height: 105,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.grey,
                      ),
                      Positioned(
                        bottom:-10,
                        left: 20,
                        child: Row(
                          children: [
                            CircleAvatar(
                                radius: 50,
                                backgroundImage: Image.asset('assets/images/profile_picture.jpg').image
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(children: [
                                          Text('gdivaguan'),
                                          Text('online'),
                                        ],),
                                      )
                          ],
                        ),
                      ),
                    ],
                  ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: SizedBox(
                    
                    width: 400,
                    
                    child: TextField(
                      decoration: InputDecoration(hintText: 'EMAIL'),
                      
                    ),
                  ),
                ),
                SizedBox(
                  
                  width: 400,
                  
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(hintText: 'YOUR PASSWORD'),
                      obscureText: true,
                      
                    ),
                  ),
                ),
                SizedBox(
                  
                  width: 400,
                  
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(hintText: 'YOUR PHONE'),
                      
                    ),
                  ),
                ),
                SizedBox(
                  
                  width: 400,
                  
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(hintText: 'CITY, STATE'),
                      
                    ),
                  ),
                ),
                SizedBox(
                  
                  width: 400,
                  
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(hintText: 'COUNTRY'),
                      
                    ),
                  ),
                ),
                SizedBox(
                  width: 400,
                  
                  child: ElevatedButton(onPressed: (){}, child: Text('Save'), 
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green)),)),
                  
            
                ],),
              ),
            ),
            
      

              
            ),
          )
          ),
        );
      
    
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_service_provider/Widgets/Home_Page.dart';
import 'package:home_service_provider/Widgets/Screens.dart';

import '../Widgets/Cleaning_Screens.dart';

class ElectricianScree extends StatelessWidget {
  const ElectricianScree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Column(
              children: [
                Container(

                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  height: 60,
                  decoration: const BoxDecoration(color: Colors.blue,
                  ),
                  child: const Row(
                    children: [

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text("Welcome, Shahin Sarker", style: TextStyle(fontSize: 20,),),
                          SizedBox(height: 5,),
                          Text("Last cleaning 5 days ago", style: TextStyle(fontSize: 15),),
                        ],
                      ),
                    ],
                  ),
                )

              ],
            ),
            const SizedBox(height: 50,width: 20,),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              padding: const EdgeInsets.all(10),
              height: 130,
              decoration: const BoxDecoration(color: Colors.red,
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              child:  const Row(
                children: [
                  CircleAvatar(

                    radius: 30,
                    backgroundImage: AssetImage('assets/images/july.png'),

                  ),
                  SizedBox(width: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("cleaner", style: TextStyle(fontSize: 18, color: Colors.white),),
                      SizedBox(height: 5,),
                      Text("Silvia", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),

                    ],
                  ),
                  SizedBox(width: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("Price", style: TextStyle(fontSize: 18, color: Colors.white),),
                      SizedBox(height: 5,),
                      Text("Tk 500", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),

                    ],
                  ),
                  SizedBox(width: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("Room", style: TextStyle(fontSize: 18, color: Colors.white),),
                      SizedBox(height: 5,),
                      Text("Kitchen", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),

                    ],
                  ),


                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    const Text('Category:',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                    const SizedBox(height: 20,),
                    Container(
                      alignment: Alignment.bottomCenter,
                      decoration: const BoxDecoration(
                        color: Colors.cyanAccent,
                        borderRadius: BorderRadius.all(Radius.circular(40)),),
                      padding: const EdgeInsets.all(20),
                      height: 70,
                      child: Image.asset('assets/images/house-cleaning.png'),
                    ),
                    RichText(
                      text: const TextSpan(
                          text: 'Cleaning',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          )
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 30,),
                Row(
                  children: [
                    Column(
                      children: [
                        const SizedBox(height: 35,),
                        Container(
                          decoration: const BoxDecoration(
                            color: Colors.cyanAccent,
                            borderRadius: BorderRadius.all(Radius.circular(40)),),
                          padding: const EdgeInsets.all(20),
                          height: 70,
                          child: Image.asset('assets/images/painting.png'),
                        ),
                        RichText(
                          text: const TextSpan(
                              text: 'Painting',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              )
                          ),
                        ),
                      ],
                    )

                  ],
                ),
                const SizedBox(width: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        const SizedBox(height: 35,),
                        GestureDetector(
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Colors.cyanAccent,
                              borderRadius: BorderRadius.all(Radius.circular(40)),),
                            padding: const EdgeInsets.all(20),
                            height: 70,
                            child: Image.asset('assets/images/electrician.png'),

                          ),
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
                          },
                        ),
                        RichText(
                          text: const TextSpan(
                              text: 'Electrician',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              )
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ],
        )
    );
  }
}

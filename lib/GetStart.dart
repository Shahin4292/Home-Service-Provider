import 'package:flutter/material.dart';
import 'package:home_service_provider/Log_Reg.dart';
import 'package:home_service_provider/Login_screen/Login_Screen.dart';
import 'package:home_service_provider/main.dart';

import 'GetStart.dart';

class GetStart extends StatelessWidget {
  const GetStart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color(0xff5ac18e),
      body: Padding(
        padding: const EdgeInsets.all(0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             const CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('assets/images/get.jpg'),

            ),
            const SizedBox(height: 30),
            const Text("That needs your service",
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),

            ),
            const SizedBox(height: 30,),
            const Text("Choose your correct",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),

            ),
            const Text("Way of service",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),

            ),

            const SizedBox(height: 150),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const LogReg()));},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(17),
                    minimumSize: const Size(300, 40),
                    primary: Colors.white,
                    onPrimary: const Color(0xff5ac18e),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
                    ),


                  ),
                  child: const Text('Get Started', style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}

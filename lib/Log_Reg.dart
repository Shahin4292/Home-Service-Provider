import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:home_service_provider/Login_screen/Login_Screen.dart';
import 'package:home_service_provider/Login_screen/Reg_Screen.dart';
import 'package:home_service_provider/Widgets/app_primary.dart';
import 'package:home_service_provider/Widgets/apps_events.dart';

class LogReg extends StatelessWidget{
  const LogReg({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Padding(
        padding: const EdgeInsets.all(0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('assets/images/regis.jpg'),

            ),
            const SizedBox(height: 30),
            const Text("Welcome to Home Service",
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text("Provider",
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),

            ),

            const SizedBox(height: 100),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const LonPage()));},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(17),
                    minimumSize: const Size(300, 40),
                    primary: const Color(0xff5ac18e),
                    onPrimary: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
                    ),


                  ),
                  child: const Text('Log In', style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),),
                ),

              ],
            ),
            const SizedBox(height: 25,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const RegScreen()));},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(17),
                    minimumSize: const Size(300, 40),
                    primary: const Color(0xff5ac18e),
                    onPrimary: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
                    ),


                  ),
                  child: const Text('Registration', style: TextStyle(
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

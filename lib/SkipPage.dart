import 'package:flutter/material.dart';
import 'package:home_service_provider/Log_Reg.dart';
import 'package:home_service_provider/main.dart';

import 'GetStart.dart';

class SkipPage extends StatelessWidget {
  const SkipPage({Key? key}) : super(key: key);

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
              backgroundImage: AssetImage('assets/images/skip.jpg'),
            ),
            const SizedBox(height: 50),
            const Text("Home Service Provider",
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 130),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const GetStart()));},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(17),
                    minimumSize: const Size(300, 40),
                    primary: Colors.white,
                    onPrimary: const Color(0xff5ac18e),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
                    ),
                  ),
                  child: const Text('Skip', style: TextStyle(
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

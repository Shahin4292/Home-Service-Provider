import 'package:flutter/material.dart';

import 'SkipPage.dart';

main(){
  runApp(const Myapp());//application
}


class Myapp extends StatelessWidget{
  const Myapp({super.key});


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
        home:SkipPage(),
    );
  }

}

class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My app"),
      ),

    );
  }
}





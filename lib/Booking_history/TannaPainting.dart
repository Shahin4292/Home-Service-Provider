import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:home_service_provider/Login_screen/Login_Screen.dart';
import 'package:home_service_provider/Widgets/Home_Page.dart';

class Tana extends StatefulWidget {
  const Tana({super.key});

  @override
  State<Tana> createState() => _TanaState();
}



class _TanaState extends State<Tana> {


  Widget buildTanaFrom() {
    DateTime date = DateTime(2022, 11, 5);
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 25,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.cyanAccent,
                      borderRadius: BorderRadius.all(Radius.circular(10)),),
                    padding: const EdgeInsets.all(0),
                    height: 90,
                    child: Image.asset('assets/images/portrait-smiling-worker-with-tools-planning-writing-note-isolated-white.jpg'),
                  ),
                ],
              ),
              const SizedBox(width: 20,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(height: 45,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(height: 20,),
                      Text("Tanna", style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold, color: Colors.white),),
                      Text("I have been specializing in", style: TextStyle(fontSize: 20,color: Colors.white),),
                      Text("Painting for 3 years", style: TextStyle(fontSize: 20,color: Colors.white),),
                    ],
                  )
                ],
              ),
            ],
          ),
          const SizedBox(height: 10,),
          ElevatedButton(
            onPressed: () async {
              DateTime? newDate = await showDatePicker(
                context: context,
                initialDate: date,
                firstDate: DateTime(1900),
                lastDate: DateTime(2100),
              );
            },
            child: const Text('Select date'),
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              Text(
                'Enter your Information:',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
  Widget buildFullName(){
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget> [
        const Text('Name',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10,),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 6,
                  offset: Offset(0, 2),
                )
              ]
          ),
          height: 60,
          child: const TextField(
            keyboardType: TextInputType.name,
            style: TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.person,
                  color: Color(0xff5ac18e),
                ),
                hintText: 'Enter Full Name',
                hintStyle: TextStyle(
                  color: Colors.black38,
                )
            ),
          ),
        )
      ],
    );
  }
  Widget buildEmail(){
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget> [
        const Text('Email',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10,),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 6,
                  offset: Offset(0, 2),
                )
              ]
          ),
          height: 60,
          child: const TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.email,
                  color: Color(0xff5ac18e),
                ),
                hintText: 'Enter Email Address',
                hintStyle: TextStyle(
                  color: Colors.black38,
                )
            ),
          ),
        )
      ],
    );
  }
  Widget buildPhone(){
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget> [
        const Text('Number',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10,),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 6,
                  offset: Offset(0, 2),
                )
              ]
          ),
          height: 60,
          child: const TextField(
            keyboardType: TextInputType.number,
            style: TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.phone,
                  color: Color(0xff5ac18e),
                ),
                hintText: 'Enter Phone Number',
                hintStyle: TextStyle(
                  color: Colors.black38,
                )
            ),
          ),
        )
      ],
    );
  }
  Widget buildAddress(){
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget> [
        const Text('Address',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10,),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 6,
                  offset: Offset(0, 2),
                )
              ]
          ),
          height: 60,
          child: const TextField(
            keyboardType: TextInputType.text,
            style: TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.work_history,
                  color: Color(0xff5ac18e),
                ),
                hintText: 'Enter Address',
                hintStyle: TextStyle(
                  color: Colors.black38,
                )
            ),
          ),
        )
      ],
    );
  }
  Widget buildLoginBtn() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      child: ElevatedButton(
          onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));},
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(17),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15)
            ),
            textStyle: const TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
            primary: Colors.white,
            onPrimary: const Color(0xff5ac18e),
            elevation: 15,
            shadowColor: const Color(0xff5ac18e),
            side: const BorderSide(color: Colors.blue, width: 2),
          ),
          child: const Text('Submit',)
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child:  Stack(
            children: <Widget> [
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.blue,
                        Colors.blue,
                        Colors.blue,
                        Colors.blue,
                      ],
                    )
                ),
                child: SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 70,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget> [
                      buildTanaFrom(),
                      const SizedBox(height: 10,),
                      buildFullName(),
                      const SizedBox(height: 10,),
                      buildEmail(),
                      const SizedBox(height: 10,),
                      buildPhone(),
                      const SizedBox(height: 10,),
                      buildAddress(),
                      const SizedBox(height: 10,),
                      buildLoginBtn(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),

    );
  }
}
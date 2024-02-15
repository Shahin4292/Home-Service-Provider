import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:home_service_provider/Login_screen/Worker_Screen.dart';
import 'package:home_service_provider/Widgets/Home_Page.dart';

class RegScreen extends StatefulWidget {
  const RegScreen({super.key});

  @override
  State<RegScreen> createState() => _RegScreenState();
}

class _RegScreenState extends State<RegScreen> {

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
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
  Widget buildPassword(){
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget> [
        const Text('Password',
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
            obscureText: true,
            style: TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.password,
                  color: Color(0xff5ac18e),
                ),
                hintText: 'Enter Password',
                hintStyle: TextStyle(
                  color: Colors.black38,
                )
            ),
          ),
        )
      ],
    );
  }
  Widget buildSignUpBtn() {
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
          child: const Text('Sign Up',)
      ),
    );
  }
  Widget buildWorkerBtn() {
    return GestureDetector(
      onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const WorkerScreen()));},
      child: RichText(
          text: const TextSpan(
              children: [
                TextSpan(
                  text: 'Don\'t have an account?  ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextSpan(
                    text: 'Worker Account',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    )
                )
              ]
          )
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
                    vertical: 120,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget> [
                      const SizedBox(height: 28,),
                      const Text(
                        'User Registration:',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 50,),
                      buildFullName(),
                      const SizedBox(height: 20,),
                      buildEmail(),
                      const SizedBox(height: 20,),
                      buildPassword(),
                      const SizedBox(height: 25,),
                      buildSignUpBtn(),
                      buildWorkerBtn(),
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
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:home_service_provider/Login_screen/Reg_Screen.dart';
import 'package:home_service_provider/Widgets/Home_Page.dart';

class LonPage extends StatefulWidget {
  const LonPage({super.key});

  @override
  State<LonPage> createState() => _LonPageState();
}


class _LonPageState extends State<LonPage> {
  bool isRememberMe = false;

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
                hintText: 'Email',
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
                hintText: 'Password',
                hintStyle: TextStyle(
                  color: Colors.black38,
                )
            ),
          ),
        )
      ],
    );
  }
  Widget buildForgotPassBtn(){
    return Container(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () => print("Forgot Password pressed"),
        child: const Text(
          'Forgot Password',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),


      ),
    );
  }
  Widget buildRememberCb(){
    return Container(
      height: 20,
      child: Row(
        children: <Widget> [
          Theme(
              data: ThemeData(unselectedWidgetColor: Colors.white),
              child: Checkbox(
                value: isRememberMe,
                checkColor: Colors.green,
                activeColor: Colors.white,
                onChanged: (value) {
                  setState(() {
                    isRememberMe = value!;
                  });
                },
              ),
          ),
          const Text(
              'Remember Me',style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          )
        ],
      ),
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
        child: const Text('Log In',)
      ),
    );
  }
  Widget buildSignUpBtn() {
    return GestureDetector(
      onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const RegScreen()));},
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
              text: 'Sign Up',
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
                  const SizedBox(height: 80,),
                      const Text(
                        'Sing In',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 50,),
                      buildEmail(),
                      const SizedBox(height: 20,),
                      buildPassword(),
                      buildForgotPassBtn(),
                      buildRememberCb(),
                      buildLoginBtn(),
                      buildSignUpBtn(),
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
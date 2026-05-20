import 'package:ecommerce_app/core/app_colors/app_colors.dart';
import 'package:ecommerce_app/screens/home_screen.dart';
import 'package:ecommerce_app/screens/auth/login_screen.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  Image.asset('asset/icons/logo_3.jpeg'),
                  SizedBox(height: 30),
                  // name
                  TextFormField(
                    cursorColor: AppColors.primaryColor,
                    obscureText: true,
                    decoration: InputDecoration(
                      floatingLabelStyle: TextStyle(
                        color: AppColors.primaryColor,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      labelText: 'Name',
                      prefixIcon: Icon(Icons.person, color: Colors.black54),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColors.primaryColor,
                          width: 1.2,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      focusColor: AppColors.primaryColor,
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),

                  // email
                  TextFormField(
                    cursorColor: AppColors.primaryColor,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      labelText: 'Email',
                      floatingLabelStyle: TextStyle(
                        color: AppColors.primaryColor,
                      ),
                      prefixIcon: Icon(Icons.email, color: Colors.black54),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color: AppColors.primaryColor,
                          width: 1.2,
                        ),
                      ),
                      focusColor: AppColors.primaryColor,
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  // number
                  TextFormField(
                    cursorColor: AppColors.primaryColor,
                    obscureText: true,
                    decoration: InputDecoration(
                      floatingLabelStyle: TextStyle(
                        color: AppColors.primaryColor,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      labelText: 'Number',
                      prefixIcon: Icon(Icons.numbers, color: Colors.black54),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColors.primaryColor,
                          width: 1.2,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      focusColor: AppColors.primaryColor,
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  // password
                  TextFormField(
                    cursorColor: AppColors.primaryColor,
                    obscureText: true,
                    decoration: InputDecoration(
                      floatingLabelStyle: TextStyle(
                        color: AppColors.primaryColor,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      labelText: 'Password',
                      prefixIcon: Icon(Icons.lock, color: Colors.black54),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColors.primaryColor,
                          width: 1.2,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      focusColor: AppColors.primaryColor,
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.remove_red_eye, color: Colors.black54),
                        // color: Colors.red,
                        style: IconButton.styleFrom(
                          overlayColor: Colors.transparent,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  // Re Enter Password
                  TextFormField(
                    cursorColor: AppColors.primaryColor,
                    obscureText: true,
                    decoration: InputDecoration(
                      floatingLabelStyle: TextStyle(
                        color: AppColors.primaryColor,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      labelText: 'Re Enter Password',
                      prefixIcon: Icon(Icons.lock, color: Colors.black54),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColors.primaryColor,
                          width: 1.2,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      focusColor: AppColors.primaryColor,
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.remove_red_eye, color: Colors.black54),
                        // color: Colors.red,
                        style: IconButton.styleFrom(
                          overlayColor: Colors.transparent,
                        ),
                      ),
                    ),
                  ),
                  // SizedBox(height: 5),
                  // Align(
                  //   alignment: AlignmentGeometry.centerRight,
                  //   child: InkWell(
                  //     onTap: () {},
                  //     child: Text(
                  //       'Forgot Password?',
                  //       style: TextStyle(
                  //         color: AppColors.primaryColor,
                  //         fontSize: 13,
                  //         fontWeight: FontWeight.bold,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 60),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(
                          context,
                        ).push(MaterialPageRoute(builder: (_) => HomeScreen()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primaryColor,
                        foregroundColor: Colors.white,
                        minimumSize: Size.fromHeight(50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(8),
                        ),
                      ),
                      child: Text(
                        'Create Account',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 9),
                  Text('OR', textAlign: TextAlign.center),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Already Have an Account'),
                      SizedBox(width: 5),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (_) => LoginScreen()),
                          );
                        },
                        child: Text(
                          'Sign in',
                          style: TextStyle(
                            decorationStyle: TextDecorationStyle.dashed,
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

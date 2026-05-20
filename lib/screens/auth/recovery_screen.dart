import 'package:ecommerce_app/core/app_colors/app_colors.dart';
import 'package:flutter/material.dart';

class RecoveryScreen extends StatelessWidget {
  const RecoveryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Recovery Password',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 25),
            // code
            TextFormField(
              cursorColor: AppColors.primaryColor,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                labelText: 'Enter Code',
                floatingLabelStyle: TextStyle(color: AppColors.primaryColor),
                prefixIcon: Icon(Icons.numbers),
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
            SizedBox(height: 15),
            // password
            TextFormField(
              cursorColor: AppColors.primaryColor,
              obscureText: true,
              decoration: InputDecoration(
                floatingLabelStyle: TextStyle(color: AppColors.primaryColor),
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
                  style: IconButton.styleFrom(overlayColor: Colors.transparent),
                ),
              ),
            ),
            SizedBox(height: 15),
            // Re Enter Password
            TextFormField(
              cursorColor: AppColors.primaryColor,
              obscureText: true,
              decoration: InputDecoration(
                floatingLabelStyle: TextStyle(color: AppColors.primaryColor),
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
                  style: IconButton.styleFrom(overlayColor: Colors.transparent),
                ),
              ),
            ),

            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryColor,
                  foregroundColor: Colors.white,
                  minimumSize: Size.fromHeight(50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(8),
                  ),
                ),
                child: Text(
                  'Send Code',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

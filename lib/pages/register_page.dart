import 'package:flutter/material.dart';
import 'package:techthermoxapp/fluttericon.dart';
import 'package:techthermoxapp/widgets/app_outlinebutton.dart';
import 'package:techthermoxapp/widgets/app_textfield.dart';
import 'package:techthermoxapp/themes.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: ListView(
          children: [
            Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    "assets/register.jpg",
                    height: 250,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.keyboard_arrow_left),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
            Text(
              "Sign Up",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Themes.colorHeader,
                fontSize: 32,
              ),
            ),
            SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: AppOutlineButton(
                    asset: "assets/google.png",
                    onTap: () {},
                  ),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: AppOutlineButton(
                    asset: "assets/facebook.png",
                    onTap: () {},
                  ),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: AppOutlineButton(
                    asset: "assets/apple.png",
                    onTap: () {},
                  ),
                ),
              ],
            ),
            SizedBox(height: 24),
            Text(
              "Or, register with email...",
              style: TextStyle(color: Colors.black38),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 24),
            AppTextField(
              hint: "Email ID",
              icon: Icons.email,
              helpContent: Text(
                "?",
                style: TextStyle(fontSize: 0, color: Themes.colorPrimary),
              ),
              helpOnTap: () {},
            ),
            SizedBox(height: 12),
            AppTextField(
              hint: "Password",
              icon: Icons.lock,
              helpContent: Text(
                "Forgot?",
                style: TextStyle(fontSize: 0, color: Themes.colorPrimary),
              ),
              helpOnTap: () {},
            ),
            SizedBox(height: 12),
            AppTextField(
              hint: "Full Name",
              icon: Icons.border_color,
              helpContent: Text(
                "?",
                style: TextStyle(fontSize: 0, color: Themes.colorPrimary),
              ),
              helpOnTap: () {},
            ),
            SizedBox(height: 12),
            AppTextField(
              hint: "Company Name",
              icon: Icons.apartment,
              helpContent: Text(
                "?",
                style: TextStyle(fontSize: 0, color: Themes.colorPrimary),
              ),
              helpOnTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

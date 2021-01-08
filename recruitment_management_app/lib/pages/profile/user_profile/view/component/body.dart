import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recruitment_management_app/main.dart';
import 'package:recruitment_management_app/pages//profile/user_profile/view/component/card_navigator.dart';
import 'package:recruitment_management_app/components/dropdown/white_dropdown_button_component.dart';
class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: new Column(
          children: <Widget>[
              Container(
                child:  Image.asset("assets/images/avatar.png"),
              ),
              SizedBox( height: 20,),
              Center(
                child: Text(
                    "NGUYEN DAC THIEN NGAN",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700
                    ),
                )
              ),
              WhiteDropdownButton(
                  hintText: "Status"
              ),
              CardNavigator(
                title: "Personal Info",
                onTap: () => {
                  Navigator.pushNamed(context, '/personalInfo')
                }
              ),
              CardNavigator(
                title: "Job Information",
              ),
              CardNavigator(
                title: "Company Info",
              ),
              CardNavigator(
                title: "Log Out",
                onTap: () => {
                  appAuth.logout().then(
                    (_) => Navigator.of(context).pushReplacementNamed('/login')
                  )
                },
              ),
          ],
        ),
      ),
    );
  }
}
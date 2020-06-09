import 'package:flutter/material.dart';
import 'package:portfolio_app/Screens/contact/contact_details.dart';

import 'menu_item.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -3),
            blurRadius: 25,
            color: Colors.black,
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          Image.asset(
            "assets/images/logo.png",
            height: 25,
            alignment: Alignment.topCenter,
          ),
          SizedBox(width: 5),
          Text(
            "Portfolio".toUpperCase(),
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          Spacer(),
         /* MenuItem(
            title: "Skills",
            press: () {},
          ),
          MenuItem(
            title: "Projects",
            press: () {},
          ),*/
          MenuItem(
            title: "Contact Me",
            press: () {Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ContactPage()),
                    );},
          ),
          /*DefaultButton(
            text: "Get Started",
            press: () {},
          ),*/
        ],
      ),
    );
  }
}

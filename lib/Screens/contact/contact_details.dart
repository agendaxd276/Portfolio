import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatefulWidget {
  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  String desc =
      "Click on the links given in my resume for viewing my projects and skills.\nFor some exciting app building related work in any field( IT, business, health, photography or personal) you can reach me out  on any of these contacts:";

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [const Color.fromRGBO(0, 255, 255, 1.0),Color.fromRGBO(0, 0, 0, 1.0)],
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(80)),
                child: Image.asset(
                  "assets/about/aakash.png",
                  width: 150,
                  height: 150,
                )),
            SizedBox(
              height: 12,
            ),
            Text(
              "Aakash Das",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 13,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: Text(
                desc,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                fontWeight: FontWeight.w300),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text("-: Connect with me :-", style: TextStyle(
              color: Colors.white,
              fontSize: 14
            ),),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: (){
                    _launchURL("https://www.facebook.com/aakash.das.3990/");
                  },
                    child: Image.asset("assets/contact/fb.png", width: 50,height: 50)
                ),
                SizedBox(
                  width: 16,
                ),
                SizedBox(
                  width: 16,
                ),
                GestureDetector(
                  onTap: (){
                    _launchURL("https://github.com/agendaxd276");
                  },
                    child: Image.asset("assets/contact/github.png", width: 50,height: 50)
                ),
                SizedBox(
              width: 20,
            ),
            GestureDetector(
              onTap: (){
                _launchURL("https://www.linkedin.com/in/agendaxd276/");
              },
              child:Image.asset("assets/contact/linkedin.png", width: 50,height: 50)
            ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

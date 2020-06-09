import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_app/Screens/Home/Components/CV/cv_screen.dart';
import 'package:portfolio_app/constant.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class Body extends StatelessWidget {
  final double fontSize;
  Body({this.fontSize = 35});
  @override
  Widget build(BuildContext context)
  {
    final age = (DateTime.now().difference(DateTime.utc(1999, DateTime.may,10)).inDays/365).toStringAsFixed(0);
   return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Aakash Das",
              style: GoogleFonts.dancingScript(
              textStyle: Theme.of(context).textTheme.display1,
              fontSize: 60,
              fontWeight: FontWeight.w700,
            fontStyle: FontStyle.italic,
            ),
          ), 
          SizedBox(height: 30),     
        Text(
          '$age Year Old, \n\nInnovative App Developing enthusiast with ',
 style: GoogleFonts.dancingScript(
              textStyle: Theme.of(context).textTheme.display1,
              fontSize: 30,
              fontWeight: FontWeight.w700,
            fontStyle: FontStyle.italic,
            ),
        ),
        Container(
          child: FadeAnimatedTextKit(
            text: <String>[
              '- experienced designing',
              '- developing',
              '- testing',
              '- maintaining',
              '- programming',
            ],
            textStyle: GoogleFonts.dancingScript(
            textStyle: Theme.of(context).textTheme.display1,
            fontSize: 48,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.italic,
             ),
            textAlign: TextAlign.start,
            alignment: AlignmentDirectional.topStart,
            totalRepeatCount: 1000000000000000000,
          ),
        ),
          SizedBox(height: 45),
          FittedBox(
            // Now it just take the required spaces
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Color(0xFF372930),
                borderRadius: BorderRadius.circular(34),
              ),
              child: Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(10),
                    height: 38,
                    width: 38,
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      shape: BoxShape.circle,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF372930),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  new MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CVScreen()),
                    );
                  },
                  child:Text(
                    "SEE RESUME".toUpperCase(),
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  ),
                  SizedBox(width: 15),
                ],
              ),
            ),
          )

           ],
      ),
    );
  }
}



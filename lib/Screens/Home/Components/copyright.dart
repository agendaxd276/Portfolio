import 'package:flutter/material.dart';
class Copyright extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 30),
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const SizedBox(width: 20),
          Text(
            '© Aakash Das ${DateTime.now().year}',
            style: TextStyle(
              fontSize: 20,
            ),
          )
        ],
      ),
    );
  }
}
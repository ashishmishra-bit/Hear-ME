import 'package:HearMe/Pages/ForgotPassward.dart';
import 'package:flutter/material.dart';

import './../Utils/Button.dart';
import './../Utils/InputFields.dart';

class InputWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 40,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: InputField(),
          ),
          SizedBox(
            height: 40,
          ),
          InkWell(
              child: Text(
                "Forgot Password?",
                style: TextStyle(color: Colors.grey),
              ),
              onTap: () {
                Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ForgotPassword()),
                    );
              }),
          SizedBox(
            height: 40,
          ),
          Button()
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:validators/validators.dart';
import 'package:house_rent/constants.dart';

class LoginPage extends StatefulWidget {


  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailFieldController = TextEditingController();
  final passwordFieldController = TextEditingController();
  bool isCorrectLogin = false;
  bool isCorrectPass = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Sign in', style: TextStyle(fontSize: 35)),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              controller: emailFieldController,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value){
                if(!isEmail(value)) {
                  return 'Incorrect input data';
                }
                isCorrectLogin = true;
                return null;
              },
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 5.0),
                  borderRadius: BorderRadius.circular(8),
                ),
                hintText: 'Enter your e-mail',
                prefixIcon: Icon(Icons.account_box_outlined),
                contentPadding: EdgeInsets.all(2)
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            child: TextFormField(
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              controller: passwordFieldController,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value){
                if(!isAlphanumeric(value)){
                  return 'Please, use only Alphabet symbols and digits';
                }
                if(value.length < 7 || value.length > 30){
                  return 'Please, enter from 7 to 30 symbols';
                }
                isCorrectPass = true;
                return null;
              },
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 5.0),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  hintText: 'Password',
                  prefixIcon: Icon(Icons.lock_outlined),
                  contentPadding: EdgeInsets.all(2)
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: FlatButton(
              onPressed: () {
                if(isCorrectLogin && isCorrectPass) {
                  Navigator.pop(context);
                }
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              color: mPrimaryColor,
              child: Container(
                width: double.infinity,
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(vertical: 14),
                child: Text(
                  'Continue',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

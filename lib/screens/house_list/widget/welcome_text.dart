import 'package:flutter/material.dart';
import 'package:house_rent/constants.dart';

class WelcomeText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 16
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Добро пожаловать на SAFby!',
            style: TextStyle(
              color: mTitleTextColor.withOpacity(0.8),
              fontSize: 16,
            ),
          ),
          SizedBox(height: 10,),
          Text(
            'Найдите свой желанный дом для аренды',
            style: TextStyle(
              color: mTitleTextColor,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}

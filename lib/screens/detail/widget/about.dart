import 'package:flutter/material.dart';
import 'package:house_rent/constants.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Информация',
            style: TextStyle(
              color: mTitleTextColor,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10,),
          Text(
            'норм хата, советую!'
                '5 минут от метро',
            style: TextStyle(
              color: mBodyTextColor,
              fontSize: 14,
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:house_rent/constants.dart';

class ContentIntro extends StatelessWidget {
  const ContentIntro({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Дом сына маминой подруги',
            style: TextStyle(
              color: mTitleTextColor,
              fontSize: 16,
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: 6,),
          Text(
            'Минск, улица Хорошей погоды, дом 8',
            style: TextStyle(
              color: mBodyTextColor,
              fontSize: 14,
            ),
          ),
          SizedBox(height: 15,),
          Text(
            '100 кв.м.',
            style: TextStyle(
              color: mBodyTextColor,
              fontSize: 14,
            ),
          ),
          SizedBox(height: 6,),
          Text(
            '\$120 в день',
            style: TextStyle(
              color: mBodyTextColor,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}

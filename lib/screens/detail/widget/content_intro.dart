import 'package:flutter/material.dart';
import 'package:house_rent/constants.dart';

class ContentIntro extends StatelessWidget {
  final int index;
  const ContentIntro({Key key, @required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            houseList[index].name,
            style: TextStyle(
              color: mTitleTextColor,
              fontSize: 16,
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: 6,),
          Text(
            houseList[index].address,
            style: TextStyle(
              color: mBodyTextColor,
              fontSize: 14,
            ),
          ),
          SizedBox(height: 15,),
          Text(
            houseList[index].square,
            style: TextStyle(
              color: mBodyTextColor,
              fontSize: 14,
            ),
          ),
          SizedBox(height: 6,),
          Text(
            houseList[index].price,
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

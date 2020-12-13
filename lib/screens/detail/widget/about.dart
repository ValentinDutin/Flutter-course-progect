import 'package:house_rent/constants.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget {

  final int index;
  const About({Key key, @required this.index,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Information',
            style: TextStyle(
              color: mTitleTextColor,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10,),
          Text(
            houseList[index].description,
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

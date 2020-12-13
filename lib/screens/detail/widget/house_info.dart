import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:house_rent/constants.dart';

class HouseInfo extends StatelessWidget {
  final int index;
  const HouseInfo({Key key, @required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            children: [
              MenuIntro(
                content: houseList[index].facilities.countBedroom,
                imageUrl: 'assets/icons/bedroom.svg',
              ),
              MenuIntro(
                content: houseList[index].facilities.countBathroom,
                imageUrl: 'assets/icons/bathroom.svg',
              )
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              MenuIntro(
                content: houseList[index].facilities.kitchenSquare,
                imageUrl: 'assets/icons/kitchen.svg',
              ),
              MenuIntro(
                content: houseList[index].facilities.countParking,
                imageUrl: 'assets/icons/parking.svg',
              )
            ],
          )
        ],
      ),
    );
  }
}

class MenuIntro extends StatelessWidget {

  final String imageUrl;
  final String content;

  const MenuIntro({
    Key key, this.imageUrl, this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          SvgPicture.asset(imageUrl),
          SizedBox(width: 15,),
          Text(
            content,
            style: TextStyle(
              color: mBodyTextColor,
              fontSize: 12,
            ),
          )
        ],
      ),
    );
  }
}

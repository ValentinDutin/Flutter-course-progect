import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:house_rent/constants.dart';

class HouseInfo extends StatelessWidget {
  const HouseInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            children: [
              MenuIntro(
                content: '12 спальных мест',
                imageUrl: 'assets/icons/bedroom.svg',
              ),
              MenuIntro(
                content: '2 сан узла',
                imageUrl: 'assets/icons/bathroom.svg',
              )
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              MenuIntro(
                content: 'большая кухня\n20 кв.м.',
                imageUrl: 'assets/icons/kitchen.svg',
              ),
              MenuIntro(
                content: '1 гараж',
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

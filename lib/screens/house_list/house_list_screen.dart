import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:house_rent/constants.dart';
import 'package:house_rent/screens/detail/detail_screen.dart';

import 'widget/custom_appbar.dart';
import 'widget/recommended_house.dart';
import 'widget/search_input.dart';
import 'widget/welcome_text.dart';


class HouseListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mBackgroundColor,
      appBar: CustomAppbar(),
      bottomNavigationBar: CustomBottombar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          WelcomeText(),
          SearchInput(),
          SizedBox(
            height: 20,
          ),
          RecommendedHouse(),
        ],
      ),
    );
  }
}

class CustomBottombar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 0),
      padding: EdgeInsets.symmetric(vertical: 0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(0),
        boxShadow: [
          boxShadow
        ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SvgPicture.asset('assets/icons/home.svg'),
          SvgPicture.asset('assets/icons/home_search.svg'),
          //SvgPicture.asset('assets/icons/notification.svg'),
          SvgPicture.asset('assets/icons/chat.svg'),
          SvgPicture.asset('assets/icons/home_mark.svg'),
          IconButton(
            icon: Icon(IconData(0xe010, fontFamily: 'MaterialIcons'),
              size: 40.0,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return DetailScreen();
                  },
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
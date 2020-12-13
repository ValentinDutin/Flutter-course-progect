import 'package:flutter/material.dart';
import 'package:house_rent/constants.dart';
import 'widget/custom_appbar.dart';
import 'widget/house_item.dart';
import 'widget/search_input.dart';
import 'widget/welcome_text.dart';


class HouseListScreen extends StatefulWidget {

  @override
  _HouseListScreenState createState() => _HouseListScreenState();
}

class _HouseListScreenState extends State<HouseListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mBackgroundColor,
      appBar: CustomAppbar(),
      bottomNavigationBar: CustomBottombar(),
      body: ListView(
        children: <Widget>[
          WelcomeText(),
          SearchInput(),
          SizedBox(
            height: 20,
          ),
          for(int i = 0; i < houseList.length; i++)
              HouseItem(firstIndex: i,),
        ],
      ),
    );
  }
}

class CustomBottombar extends StatefulWidget {
  @override
  _CustomBottombarState createState() => _CustomBottombarState();
}

class _CustomBottombarState extends State<CustomBottombar> {
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
          //SvgPicture.asset('assets/icons/home.svg'),
          //SvgPicture.asset('assets/icons/home_search.svg'),
          //SvgPicture.asset('assets/icons/notification.svg'),
          //SvgPicture.asset('assets/icons/chat.svg'),
          //SvgPicture.asset('assets/icons/home_mark.svg'),
          IconButton(
              icon: Icon(Icons.home_outlined, size: 35.0),
              onPressed: () {
              },
          ),
          IconButton(
            icon: Icon(Icons.description_outlined, size: 35.0),
            onPressed: () {},
          ),
          IconButton(
              icon: Icon(Icons.account_circle_outlined, size: 35.0),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
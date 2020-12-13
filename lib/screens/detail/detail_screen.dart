import 'package:flutter/material.dart';
import 'package:house_rent/constants.dart';
import 'widget/about.dart';
import 'widget/content_appbar.dart';
import 'widget/content_intro.dart';
import 'widget/house_info.dart';

class DetailScreen extends StatelessWidget {
  final int index;
  const DetailScreen({Key key, @required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ContentAppbar(index: index),
          SizedBox(
            height: 20,
          ),
          ContentIntro(index: index),
          SizedBox(
            height: 20,
          ),
          HouseInfo(index: index),
          SizedBox(
            height: 25,
          ),
          About(index: index),
          SizedBox(
            height: 25,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: FlatButton(
              onPressed: () {},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              color: mPrimaryColor,
              child: Container(
                width: double.infinity,
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(vertical: 14),
                child: Text(
                  'Reserve now',
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

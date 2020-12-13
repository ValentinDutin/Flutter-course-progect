import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:house_rent/constants.dart';
import 'package:android_intent/android_intent.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _onTap = false;
  final AndroidIntent _taxiIntent =
  AndroidIntent(
      action: 'action_view',
      data: 'https://3.redirect.appmetrica.yandex.com/route?&appmetrica_tracking_id=1178268795219780156',
  );
  final AndroidIntent _guideIntent =
  AndroidIntent(
      action: 'action_view',
      data: Uri.encodeFull('https://www.google.com/search?sxsrf=ALeKk02LlnFCOv2uu9i2kXrciT-9HdAlIA%3A1607799455083&ei=nxLVX4fTBOj0qwH00piADQ&q=Belarus+travel+guide&oq=Belarus+travel+guide&gs_lcp=CgZwc3ktYWIQAzICCAAyBggAEBYQHjIGCAAQFhAeMgYIABAWEB46BAgAEEc6BAgjECc6CAgAELEDEIMBOgUILhCxAzoLCAAQsQMQxwEQowI6BQgAELEDOg0ILhAKEAEQQxAqEJMCOgQIABBDOgQILhBDOg4IABDHARCjAhAKEAEQQzoICAAQChABEEM6BwgjEOoCECc6CQgjEOoCECcQEzoGCCMQJxATOggIABDHARCjAjoNCAAQsQMQxwEQowIQQzoHCAAQsQMQQzoKCAAQsQMQgwEQQzoHCC4QQxCTAjoHCC4QsQMQQzoKCC4QsQMQQxCTAjoECAAQCjoKCAAQxwEQowIQCjoMCAAQsQMQgwEQChAqOgIILjoKCAAQsQMQgwEQCjoICAAQxwEQrwE6AggmUOOVAViK4AFggOEBaAJwAngAgAHaAYgBhxqSAQYwLjE2LjSYAQCgAQGqAQdnd3Mtd2l6sAEKyAEIwAEB&sclient=psy-ab&ved=0ahUKEwjHno_bj8ntAhVo-ioKHXQpBtAQ4dUDCA0&uact=5'),
      package: 'com.android.chrome'
  );
  final AndroidIntent _translateIntent =
  AndroidIntent(
      action: 'action_view',
      data: Uri.encodeFull('https://www.google.com/search?sxsrf=ALeKk03Qu6yFIz9-WuTzq1DI5Yndlu7gpg%3A1607799930866&ei=ehTVX4-3NMSMrwTe0ZzACg&q=google+translate&oq=google+translate&gs_lcp=CgZwc3ktYWIQAzIKCAAQsQMQgwEQQzIHCAAQFBCHAjICCAAyAggAMgIIADICCAAyAggAMgIIADICCAAyAggAOgQIABBHOgQIIxAnOgcIABCxAxBDOggIABCxAxCDAToFCC4QsQM6BQgAELEDOgQIABBDOgcIIxCxAhAnOgcIABCxAxAKUO06WKp2YIV5aAlwAngBgAG4AYgBihqSAQQwLjIxmAEAoAEBqgEHZ3dzLXdpesgBCMABAQ&sclient=psy-ab&ved=0ahUKEwiP3P69kcntAhVExosKHd4oB6gQ4dUDCA0&uact=5'),
      package: 'com.android.chrome'
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData.dark(),
        title: "Categories",
        home: Scaffold(
          appBar: AppBar(
            title: Text('Choose a category', style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold)),
            centerTitle: true,
            backgroundColor: _onTap ? Colors.black45 :Colors.black,
          ),
          body: ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: categories.length,
            itemBuilder: (_, index) => Card(
            color:  _onTap ? Colors.black12 : Colors.black,
            margin: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
            child: ListTile(
              title: Text(
                categories[index].description,
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white),
              ),
              leading:
                SvgPicture.asset(categories[index].iconUrl, width: 30, height: 30),
              trailing: Icon(
                  Icons.arrow_forward_ios,
                size: 16,
                color: Colors.white,
              ),
              onTap: () => {
                _onTap = !_onTap,
                if(categories[index].screenRoute == '/taxi'){
                  _taxiIntent.launch(),
                }
                else if(categories[index].screenRoute == '/guide'){
                  _guideIntent.launch(),
                }
                else if(categories[index].screenRoute == '/translate'){
                  _translateIntent.launch(),
                  }
                else{
                  Navigator.pushNamed(context, categories[index].screenRoute),
                }
              }
            )
          )
        )
      )
    );
  }
}

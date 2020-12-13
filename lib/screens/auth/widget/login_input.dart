import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:house_rent/constants.dart';

class LoginInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
          child: TextField(
            decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 5.0),
                  borderRadius: BorderRadius.circular(8),
                ),
                hintText: 'Логин',
                prefixIcon: Container(
                  padding: EdgeInsets.all(14),
                  child: SvgPicture.asset('assets/icons/search.svg'),
                ),
                contentPadding: EdgeInsets.all(2)
            ),
          ),
        ),
        SizedBox(height: 20),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
          child: TextField(
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(
                borderSide: BorderSide(width: 5.0),
                borderRadius: BorderRadius.circular(8),
              ),
              hintText: 'Пароль',
              prefixIcon: Container(
                padding: EdgeInsets.all(14),
                child: SvgPicture.asset('assets/icons/search.svg'),
                ),
              contentPadding: EdgeInsets.all(2)
              ),
            ),
          ),
        ],
    );
  }
}
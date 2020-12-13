import 'package:flutter/material.dart';
import 'model/category_item.dart';
import 'model/house.dart';

Color mPrimaryColor = Color(0xFF811B83);

Color mTitleTextColor = Color(0xFF100E34);

Color mBodyTextColor = Color(0xFF100E34).withOpacity(0.5);

Color mBackgroundColor = Color(0xFFF5F6F6);

Color mSecondaryColor = Color(0xFFFA5019);

final categoryList = ['Top Recommended', 'Near you', 'Agency Recommended'];

final recommendedList = [
  House('Дом сына маминой подруги', 'Минск, улица Хорошей погоды, дом 8', 'assets/images/house01.jpeg'),
  House('Дом сына маминой подруги', 'Минск, улица Хорошей погоды, дом 8', 'assets/images/house02.jpeg')
];

final List<CategoryItem> categories = [
  CategoryItem('Rent a house', 'assets/icons/001-home.svg', '/rent-house'),
  CategoryItem('Translation services', 'assets/icons/003-language.svg', '/translate'),
  CategoryItem('Taxi', 'assets/icons/002-frontal-taxi-cab.svg', '/taxi'),
  CategoryItem('Belarus travel guide', 'assets/icons/guide.svg', '/guide'),
  CategoryItem('Category 1', 'assets/icons/category_icon.svg', '/'),
  CategoryItem('Category 2', 'assets/icons/category_icon.svg', '/'),
  CategoryItem('Category 3', 'assets/icons/category_icon.svg', '/'),
  CategoryItem('Category 4', 'assets/icons/category_icon.svg', '/'),
  CategoryItem('Category 5', 'assets/icons/category_icon.svg', '/'),
  CategoryItem('Category 6', 'assets/icons/category_icon.svg', '/'),
  CategoryItem('Category 7', 'assets/icons/category_icon.svg', '/'),
  CategoryItem('Category 8', 'assets/icons/category_icon.svg', '/'),
  CategoryItem('Category 9', 'assets/icons/category_icon.svg', '/'),
  CategoryItem('Category 10', 'assets/icons/category_icon.svg', '/'),
  CategoryItem('Category 11', 'assets/icons/category_icon.svg', '/'),
];

final BoxShadow boxShadow = BoxShadow(
  color: Colors.grey.withOpacity(0.3),
  spreadRadius: 1,
  blurRadius: 7,
  offset: Offset(0, 3),
);

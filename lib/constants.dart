import 'package:flutter/material.dart';
import 'model/category_item.dart';
import 'model/house.dart';

Color mPrimaryColor = Color(0xFF811B83);
Color mTitleTextColor = Color(0xFF100E34);
Color mBodyTextColor = Color(0xFF100E34).withOpacity(0.5);
Color mBackgroundColor = Color(0xFFF5F6F6);
Color mSecondaryColor = Color(0xFFFA5019);

final categoryList = ['Top Recommended', 'Near you', 'Agency Recommended'];

final List<House> houseList = [
  House(
    name: 'First house',
    address: 'First address',
    description: 'First house description',
    square: 'N1 sq.m',
    price: '\$N1 per day',
    facilities: Facilities(
      countBathroom: 'N1 bathroom',
      countBedroom: 'N1 bedroom',
      countParking: 'N1 parking',
      kitchenSquare: 'kitchen N1 sq.m',
    ),
    photoUrlList: [
      'assets/images/house01.jpeg',
      'assets/images/house02.jpeg',
      'assets/images/house01.jpeg',
      'assets/images/house01.jpeg',
    ],
  ),
  House(
      name: 'Дом сына маминой подруги',
      address: 'Минск, улица Хорошей погоды, дом 8',
      description: 'норм хата, советую! 5 минут от метро',
      square: '200 кв.м',
      price: '\$120 в день',
      facilities: Facilities(
        countBathroom: '2 сан. узла',
        countBedroom: '4 спальни',
        countParking: '1 гараж',
        kitchenSquare: 'кухня 20 кв.м',
      ),
      photoUrlList: [
        'assets/images/house01.jpeg',
        'assets/images/house02.jpeg',
        'assets/images/house01.jpeg',
        'assets/images/house01.jpeg',
      ],
  ),
  House(
    name: 'Third house',
    address: 'Third address',
    description: 'Third house description',
    square: 'N3 sq.m',
    price: '\$N3 per day',
    facilities: Facilities(
      countBathroom: 'N3 bathroom',
      countBedroom: 'N3 bedroom',
      countParking: 'N3 parking',
      kitchenSquare: 'kitchen N3 sq.m',
    ),
    photoUrlList: [
      'assets/images/house01.jpeg',
      'assets/images/house02.jpeg',
      'assets/images/house01.jpeg',
      'assets/images/house01.jpeg',
    ],
  ),
  House(
    name: 'Fourth house',
    address: 'Fourth address',
    description: 'Fourth house description',
    square: 'N4 sq.m',
    price: '\$N4 per day',
    facilities: Facilities(
      countBathroom: 'N4 bathroom',
      countBedroom: 'N4 bedroom',
      countParking: 'N4 parking',
      kitchenSquare: 'kitchen N4 sq.m',
    ),
    photoUrlList: [
      'assets/images/house01.jpeg',
      'assets/images/house02.jpeg',
      'assets/images/house01.jpeg',
      'assets/images/house01.jpeg',
    ],
  ),
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

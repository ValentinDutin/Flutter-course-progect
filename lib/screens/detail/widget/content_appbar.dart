import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:house_rent/constants.dart';

class ContentAppbar extends StatelessWidget {
  final int index;
  const ContentAppbar({Key key, @required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: Stack(
        children: [
          ListView.builder(
            itemCount: houseList[index].photoUrlList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, secondIndex) => Image.asset(
              houseList[index].photoUrlList[secondIndex],
              fit: BoxFit.cover,
              height: double.infinity,
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    child: SvgPicture.asset('assets/icons/arrow.svg', width: 15, height: 15),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

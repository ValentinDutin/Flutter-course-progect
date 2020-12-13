import 'package:flutter/material.dart';
import 'package:house_rent/constants.dart';
import 'package:house_rent/screens/detail/detail_screen.dart';

class HouseItem extends StatelessWidget {
  final int firstIndex;
  HouseItem({Key key, @required this.firstIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 340,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: houseList[firstIndex].photoUrlList.length,
        itemBuilder: (context, secondIndex) => GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return DetailScreen(index: firstIndex);
                  },
              ),
            );
            },
          child: Container(
            width: 230,
            height: 300,
            margin: EdgeInsets.only(bottom: 40, left: 20),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          houseList[firstIndex].photoUrlList[secondIndex],
                        ),
                        fit: BoxFit.cover
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    color: Colors.white54,
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                houseList[firstIndex].name,
                                style: TextStyle(
                                  color: mTitleTextColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                houseList[firstIndex].address,
                                style: TextStyle(
                                  color: mTitleTextColor,
                                  fontSize: 12,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

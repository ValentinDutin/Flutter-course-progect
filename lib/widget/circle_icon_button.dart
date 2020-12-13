import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CircleIconButton extends StatelessWidget {

  final String iconUrl;
  final Color color;
  final String route;

  const CircleIconButton({
    Key key, this.iconUrl, this.color, this.route
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 25,
      height: 27,
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
      child: SvgPicture.asset(iconUrl),
    );
  }
}
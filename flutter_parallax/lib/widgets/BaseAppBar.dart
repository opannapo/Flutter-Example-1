import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_parallax/styles/ColorsConst.dart';

class BaseToolBar extends StatelessWidget {
  String title;
  VoidCallback onLeftPress;
  VoidCallback onRightPress;
  IconData leftIcon;
  IconData rightIcon;

  bool hasLeftIcon;
  bool hasRightIcon;

  BaseToolBar(
      {this.title,
      this.leftIcon,
      this.onLeftPress,
      this.rightIcon,
      this.onRightPress}) {
    hasLeftIcon = this.leftIcon != null;
    hasRightIcon = this.rightIcon != null;
  }

  @override
  Widget build(BuildContext ctx) {
    return new AppBar(
      automaticallyImplyLeading: false,
      titleSpacing: 0.0,
      elevation: 0.0,
      backgroundColor: ColorsConst.white,
      title: Row(
        children: <Widget>[
          new Flexible(
            child: hasLeftIcon
                ? Container(
                    color: Colors.transparent,
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    alignment: Alignment.centerLeft,
                    child: IconButton(
                      //icon: new Image.asset('assets/back.png'),
                      icon: new Icon(
                        leftIcon,
                        color: ColorsConst.base,
                      ),
                      onPressed: onLeftPress,
                    ),
                  )
                : new Container(),
            flex: 50,
          ),
          new Flexible(
            child: Container(
              color: Colors.transparent,
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              alignment: Alignment.center,
              child: Text(
                title ?? '',
                style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 4,
                    color: ColorsConst.base),
              ),
            ),
            flex: 50,
          ),
          new Flexible(
            child: hasRightIcon
                ? Container(
                    color: Colors.transparent,
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      icon: new Icon(
                        rightIcon,
                        color: ColorsConst.base,
                      ),
                      onPressed: onRightPress,
                    ),
                  )
                : new Container(),
            flex: 50,
          ),
        ],
      ),
    );
  }
}

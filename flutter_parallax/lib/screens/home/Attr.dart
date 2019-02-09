import 'package:flutter/material.dart';
import 'package:flutter_parallax/entities/UserEntity.dart';

class Attr {
  TabController tabControl;
  var scfdRootKey = new GlobalKey<ScaffoldState>();

  UserEntity user;
  int tabIdx;
  int tabIdxPrev;
  String title;
  List<String> titleTabs = new List();

}

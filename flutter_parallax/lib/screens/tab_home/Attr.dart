import 'package:flutter/material.dart';
import 'package:flutter_parallax/widgets/ListImageItems.dart';
import 'package:flutter_parallax/widgets/PagerBannerItems.dart';
import 'package:flutter_parallax/widgets/TimelineTopicItem.dart';

class Attr {
  //Widget
  PageController bannerViewPagerControl;
  var keyScaffold = new GlobalKey<ScaffoldState>();

  //Values
  int totalViews = 0;
  List<PagerBannerItems> bannerImages = new List();
  List<ListImageItems> itemImages = new List();
  List<TimelineTopicItem> itemTopic = new List();
}

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_parallax/screens/tab_home/Attr.dart';
import 'package:flutter_parallax/styles/ColorsConst.dart';
import 'package:flutter_parallax/styles/StyleConst.dart';
import 'package:flutter_parallax/widgets/DotsIndicator.dart';

class TabHomeView extends StatelessWidget {
  Attr attr;
  ActionAbs act;

  TabHomeView(this.attr, this.act);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: attr.keyScaffold,
      backgroundColor: Colors.white,
      body: Container(
        child: new SingleChildScrollView(
          child: Column(
            children: <Widget>[
              new Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.width + 20,
                child: new Stack(
                  children: <Widget>[
                    new Container(
                      color: ColorsConst.white,
                      constraints: BoxConstraints.expand(
                          width: double.infinity,
                          height: MediaQuery.of(context).size.width),
                      child: PageView(
                        physics: BouncingScrollPhysics(),
                        controller: attr.bannerViewPagerControl,
                        children: attr.bannerImages,
                      ),
                    ),
                    new Positioned(
                      bottom: 40,
                      height: 30,
                      right: 0,
                      child: new Container(
                        width: double.parse('${20 * attr.bannerImages.length}'),
                        child: new ClipRRect(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(0),
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(0)),
                          child: new BackdropFilter(
                            filter:
                                new ImageFilter.blur(sigmaX: 2.0, sigmaY: 5.0),
                            child: new Container(
                              decoration: new BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(0),
                                      bottomRight: Radius.circular(0),
                                      topLeft: Radius.circular(0),
                                      topRight: Radius.circular(0)),
                                  color: ColorsConst.black.withOpacity(0.6)),
                              padding: EdgeInsets.all(0),
                              width: MediaQuery.of(context).size.width,
                              child: new Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  new DotsIndicator(
                                    colorActive: ColorsConst.base,
                                    colorInActive: ColorsConst.white,
                                    controller: attr.bannerViewPagerControl,
                                    itemCount: attr.bannerImages.length,
                                    spacing: 12,
                                    size: 4.0,
                                    activedZoom: 1.5,
                                    dotType: DotType.BOX,
                                    icon: Icons.adjust,
                                    onPageSelected: (int page) {
                                      attr.bannerViewPagerControl.animateToPage(
                                        page,
                                        duration: Duration(milliseconds: 300),
                                        curve: Curves.ease,
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              new Container(
                color: Colors.white,
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Flexible(
                      child: new Text(
                        "TOP",
                        style: new TextStyle(
                            letterSpacing: 4,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      flex: 50,
                    ),
                    new Flexible(
                      child: new FlatButton(
                        padding: EdgeInsets.all(0),
                        onPressed: () => act.onShowAll("TOP ITEMS"),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            new Text("SHOW ALL",
                                textAlign: TextAlign.justify,
                                style: TextStyleConst.b12(
                                    color: ColorsConst.grey, letterSpacing: 1)),
                            Icon(
                              Icons.navigate_next,
                              color: Colors.black.withOpacity(0.5),
                              size: 16,
                            )
                          ],
                        ),
                      ),
                      flex: 50,
                    ),
                  ],
                ),
              ),
              new Container(
                constraints:
                    BoxConstraints.expand(width: double.infinity, height: 150),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: attr.itemImages,
                ),
              ),
              new Container(
                color: Colors.white,
                padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Flexible(
                      child: new Text(
                        "TOPIC",
                        style: new TextStyle(
                            letterSpacing: 4,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      flex: 50,
                    ),
                    new Flexible(
                      child: new FlatButton(
                        padding: EdgeInsets.all(0),
                        onPressed: () => act.onShowAll("TOPIC"),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            new Text("SHOW ALL",
                                textAlign: TextAlign.justify,
                                style: TextStyleConst.b12(
                                    color: ColorsConst.grey, letterSpacing: 1)),
                            Icon(
                              Icons.navigate_next,
                              color: Colors.black.withOpacity(0.5),
                              size: 16,
                            )
                          ],
                        ),
                      ),
                      flex: 50,
                    ),
                  ],
                ),
              ),
              new Container(
                child: ListView(
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  children: attr.itemTopic,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

abstract class ActionAbs {
  void onPress() {}

  void onShowAll(String flag) {}
}

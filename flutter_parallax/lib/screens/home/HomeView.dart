import 'package:flutter/material.dart';
import 'package:flutter_parallax/screens/home/Attr.dart';
import 'package:flutter_parallax/screens/tab_cat/TabCat.dart';
import 'package:flutter_parallax/screens/tab_home/TabHome.dart';
import 'package:flutter_parallax/screens/tab_love/TabLove.dart';
import 'package:flutter_parallax/screens/tab_profile/TabProfile.dart';
import 'package:flutter_parallax/widgets/BaseAppBar.dart';

class HomeView extends StatelessWidget {
  Attr attr;
  ActionAbs act;

  HomeView(this.attr, this.act);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        key: attr.scfdRootKey,
        appBar: BaseToolBar(
          title: attr.title,
          //leftIcon: Icons.arrow_back_ios,
          //onLeftPress: viewModel.onLeftPress,
          rightIcon: Icons.info,
          onRightPress: act.onRightPress,
        ).build(context),
        body: TabBarView(
          controller: attr.tabControl,
          children: <Widget>[
            new TabHome(),
            new TabCat(),
            new TabLove(),
            new TabProfile(),
          ],
        ),
        bottomNavigationBar: new Container(
          height: 50,
          decoration: new BoxDecoration(color: Colors.white, boxShadow: [
            new BoxShadow(
              color: Colors.grey[500],
              blurRadius: 10.0,
              spreadRadius: 0.0,
            ),
          ]),
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Flexible(
                flex: 50,
                child: new FlatButton(
                  onPressed: () => act.changeTab(0),
                  child: attr.tabIdx == 0
                      ? new Image(
                          image:
                              new AssetImage("assets/ic/tab/ic_tab_home.png"),
                          width: 25.0,
                          height: 25.0)
                      : new Image(
                          image: new AssetImage(
                              "assets/ic/tab/ic_tab_home_non.png"),
                          width: 20.0,
                          height: 20.0),
                ),
              ),
              new Flexible(
                flex: 50,
                child: new FlatButton(
                  onPressed: () => act.changeTab(1),
                  child: attr.tabIdx == 1
                      ? new Image(
                          image: new AssetImage(
                              "assets/ic/tab/ic_tab_category.png"),
                          width: 25.0,
                          height: 25.0)
                      : new Image(
                          image: new AssetImage(
                              "assets/ic/tab/ic_tab_category_non.png"),
                          width: 20.0,
                          height: 20.0),
                ),
              ),
              new Flexible(
                flex: 50,
                child: new FlatButton(
                  onPressed: () => act.changeTab(2),
                  child: attr.tabIdx == 2
                      ? new Image(
                          image:
                              new AssetImage("assets/ic/tab/ic_tab_love.png"),
                          width: 25.0,
                          height: 25.0)
                      : new Image(
                          image: new AssetImage(
                              "assets/ic/tab/ic_tab_love_non.png"),
                          width: 20.0,
                          height: 20.0),
                ),
              ),
              new Flexible(
                flex: 50,
                child: new FlatButton(
                  onPressed: () => act.changeTab(3),
                  child: attr.tabIdx == 3
                      ? new Image(
                          image: new AssetImage(
                              "assets/ic/tab/ic_tab_profile.png"),
                          width: 25.0,
                          height: 25.0)
                      : new Image(
                          image: new AssetImage(
                              "assets/ic/tab/ic_tab_profile_non.png"),
                          width: 20.0,
                          height: 20.0),
                ),
              ),
            ],
          ),
        ));
  }
}

abstract class ActionAbs {
  void onLeftPress() {}

  void onRightPress() {}

  void changeTab(int index) {}
}

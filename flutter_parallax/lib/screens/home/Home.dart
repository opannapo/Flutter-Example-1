import 'package:flutter/material.dart';
import 'package:flutter_parallax/entities/UserEntity.dart';
import 'package:flutter_parallax/screens/home/Attr.dart';
import 'package:flutter_parallax/screens/home/HomeView.dart';

class Home extends StatefulWidget {
  UserEntity user;

  Home({this.user});

  @override
  State<StatefulWidget> createState() => new HomeState(this.user);
}

class HomeState extends State<Home>
    with SingleTickerProviderStateMixin
    implements ActionAbs {
  Attr attr = new Attr();

  HomeState(UserEntity user) {
    if (user != null) {
      attr.user = user;
    }
  }

  @override
  void initState() {
    super.initState();
    attr.title = "Home";
    attr.scfdRootKey = new GlobalKey<ScaffoldState>();
    attr.tabIdx = 0;
    attr.tabIdxPrev = 0;
    attr.titleTabs = ["Home", "Categories", "Loved", "Profile"];
    attr.tabControl = new TabController(length: 4, vsync: this);
    attr.tabControl.addListener(_tabListener);
  }

  @override
  void dispose() {
    attr.tabControl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => new HomeView(attr, this);

  void onLeftPress() {
    Navigator.pop(context); // Pop from stack
  }

  void onRightPress() {
    final snackBar = SnackBar(
      content: Text('Hi... !'),
      action: SnackBarAction(
        label: 'Close',
        onPressed: () {
          // Some code to undo the change!
        },
      ),
    );
    attr.scfdRootKey.currentState.showSnackBar(snackBar);
  }

  void changeTab(int index) {
    if (index == attr.tabIdx) return;
    setState(() {
      attr.tabIdxPrev = attr.tabIdx;
      attr.tabIdx = index;
      attr.title = attr.titleTabs[index];
      attr.tabControl.index = index;
    });
  }

  _tabListener() {
    changeTab(attr.tabControl.index);
  }
}

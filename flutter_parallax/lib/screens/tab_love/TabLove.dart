import 'package:flutter/material.dart';
import 'package:flutter_parallax/screens/tab_love/TabLoveView.dart';

class TabLove extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    print('HomeTabLove Create State ');
    return new TabLoveState();
  }
}

class TabLoveState extends State<TabLove> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) => new TabLoveView();
}

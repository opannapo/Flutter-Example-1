import 'package:flutter/material.dart';
import 'package:flutter_parallax/screens/tab_profile/TabProfileView.dart';

class TabProfile extends StatefulWidget {
  TabProfile();

  @override
  State<StatefulWidget> createState() {
    print('HomeTabProfile Create State ');
    return new TabProfileState();
  }
}

class TabProfileState extends State<TabProfile>{

  @override
  void initState() {
    super.initState();
    print('HomeTabProfile INIT State ');
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => new TabProfileView();

}

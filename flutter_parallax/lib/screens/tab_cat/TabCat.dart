import 'package:flutter/material.dart';
import 'package:flutter_parallax/screens/tab_cat/Attr.dart';
import 'package:flutter_parallax/screens/tab_cat/TabCatView.dart';
import 'package:flutter_parallax/widgets/ListBasic.dart';

class TabCat extends StatefulWidget {
  TabCat();

  @override
  State<StatefulWidget> createState() {
    print('HomeTabCat Create State ');
    return new TabCatState();
  }
}

class TabCatState extends State<TabCat>
    with AutomaticKeepAliveClientMixin<TabCat>
    implements ActionAbs, ListClickCallback {
  Attr attr = new Attr();
  List<String> catNames = new List();

  TabCatState();

  @override
  void initState() {
    super.initState();
    setupCategoryNames();
  }

  @override
  void dispose() {
    attr.keyScaffold2.currentState.dispose();
    attr.tSearchControl.dispose();
    attr.listItems = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => new TabCatView(attr, this);

  void setupCategoryNames() {
    attr.listItems = new List();

    catNames.add("Promosi");
    catNames.add("Terdekat");
    catNames.add("Hemat");
    catNames.add("Sarapan");
    catNames.add("Minuman");
    catNames.add("Cemilan");
    catNames.add("Rokok");
    catNames.add("Batu");
    catNames.add("Rumput");
    catNames.add("Tanah Liat");
    catNames.add("Gorengan");
    catNames.add("Air Putih");
    catNames.add("Kipas Angin");
    catNames.add("Jahe Gas");

    for (int i = 0; i < catNames.length; i++) {
      String text = catNames[i];
      attr.listItems.add(new ListBasic(i, text, this));
    }
  }

  @override
  void onThumbCatPress(int idx) {
    showSnackBar(catNames[idx]);
  }

  @override
  void onSearchPress(String key) {
    showSnackBar('Searching ${key} ...');
    attr.tSearchControl.text = "";
  }

  @override
  bool get wantKeepAlive => true;

  @override
  void onListClicked(int idx) {
    showSnackBar('${catNames[idx]}');
  }

  void showSnackBar(String text) {
    final snackBar = SnackBar(
      content: Text(text),
      action: SnackBarAction(label: 'Close', onPressed: () {}),
    );
    attr.keyScaffold2.currentState.showSnackBar(snackBar);
  }
}

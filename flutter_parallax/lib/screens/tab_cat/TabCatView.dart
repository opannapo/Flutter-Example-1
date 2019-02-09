import 'package:flutter/material.dart';
import 'package:flutter_parallax/screens/tab_cat/Attr.dart';
import 'package:flutter_parallax/styles/ColorsConst.dart';

class TabCatView extends StatelessWidget {
  Attr root;
  ActionAbs act;

  TabCatView(this.root, this.act);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: root.keyScaffold2,
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: false,
      body: Container(
          child: new SingleChildScrollView(
        child: new Column(
          children: <Widget>[
            new Container(
              color: ColorsConst.white,
              padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
              child: new Row(
                children: <Widget>[
                  new Flexible(
                    child: new Container(
                      decoration: new BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: new BorderRadius.only(
                              bottomLeft: const Radius.circular(20.0),
                              bottomRight: const Radius.circular(20.0),
                              topLeft: const Radius.circular(20.0),
                              topRight: const Radius.circular(20.0))),
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        decoration: new InputDecoration.collapsed(
                            hintText: 'Search Product ...',
                            hintStyle: new TextStyle(
                              color: Colors.grey[400],
                              fontSize: 14,
                              letterSpacing: 1,
                              fontWeight: FontWeight.w300,
                            )),
                        controller: root.tSearchControl,
                        style: new TextStyle(
                          letterSpacing: 1,
                          color: ColorsConst.base,
                        ),
                      ),
                    ),
                    flex: 90,
                  ),
                  new Flexible(
                    child: new FlatButton(
                      padding: EdgeInsets.all(0),
                      onPressed: () =>
                          act.onSearchPress(root.tSearchControl.text),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.search,
                            color: ColorsConst.base,
                            size: 25,
                          )
                        ],
                      ),
                    ),
                    flex: 10,
                  ),
                ],
              ),
            ),
            new Container(
              margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Container(
                    margin: EdgeInsets.all(10),
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        new Container(
                          width: 100,
                          height: 100,
                          child: new FlatButton(
                            padding: EdgeInsets.all(20),
                            color: Colors.grey[100],
                            onPressed: () => act.onThumbCatPress(0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.pages,
                                  color: Colors.black,
                                  size: 30,
                                ),
                                Text(
                                  "Promosi",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 1,
                                      color: Colors.black),
                                )
                              ],
                            ),
                          ),
                        ),
                        new Container(
                          width: 100,
                          height: 100,
                          child: new FlatButton(
                            padding: EdgeInsets.all(20),
                            color: Colors.grey[100],
                            onPressed: () => act.onThumbCatPress(1),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.location_on,
                                  color: Colors.black,
                                  size: 30,
                                ),
                                Text(
                                  "Terdekat",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 1,
                                      color: Colors.black),
                                )
                              ],
                            ),
                          ),
                        ),
                        new Container(
                          width: 100,
                          height: 100,
                          child: new FlatButton(
                            padding: EdgeInsets.all(20),
                            color: Colors.grey[100],
                            onPressed: () => act.onThumbCatPress(2),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.attach_money,
                                  color: Colors.black,
                                  size: 30,
                                ),
                                Text(
                                  "Hemat",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 1,
                                      color: Colors.black),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  new Container(
                    margin: EdgeInsets.all(10),
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        new Container(
                          width: 100,
                          height: 100,
                          child: new FlatButton(
                            padding: EdgeInsets.all(20),
                            color: Colors.grey[100],
                            onPressed: () => act.onThumbCatPress(3),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.alarm,
                                  color: Colors.black,
                                  size: 30,
                                ),
                                Text(
                                  "Sarapan",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 1,
                                      color: Colors.black),
                                )
                              ],
                            ),
                          ),
                        ),
                        new Container(
                          width: 100,
                          height: 100,
                          child: new FlatButton(
                            padding: EdgeInsets.all(20),
                            color: Colors.grey[100],
                            onPressed: () => act.onThumbCatPress(4),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.local_drink,
                                  color: Colors.black,
                                  size: 30,
                                ),
                                Text(
                                  "Minuman",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 1,
                                      color: Colors.black),
                                )
                              ],
                            ),
                          ),
                        ),
                        new Container(
                          width: 100,
                          height: 100,
                          child: new FlatButton(
                            padding: EdgeInsets.all(20),
                            color: Colors.grey[100],
                            onPressed: () => act.onThumbCatPress(5),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.beach_access,
                                  color: Colors.black,
                                  size: 30,
                                ),
                                Text(
                                  "Cemilan",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 1,
                                      color: Colors.black),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            new Container(
              margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
              child: Text(
                "All Categories",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                    color: Colors.black),
              ),
            ),
            new Container(
              decoration: new BoxDecoration(
                  color: ColorsConst.base,
                  borderRadius: new BorderRadius.only(
                      bottomLeft: const Radius.circular(0.0),
                      bottomRight: const Radius.circular(0.0),
                      topLeft: const Radius.circular(20.0),
                      topRight: const Radius.circular(20.0))),
              width: 350,
              padding: EdgeInsets.all(10),
              child: new ListView(
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                children: root.listItems,
              ),
            ),
          ],
        ),
      )),
    );
  }
}

abstract class ActionAbs {
  void onThumbCatPress(int idx) {}

  void onSearchPress(String key) {}
}

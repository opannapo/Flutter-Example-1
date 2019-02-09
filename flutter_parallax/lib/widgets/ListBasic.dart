import 'package:flutter/material.dart';

class ListBasic extends StatelessWidget {
  int idx;
  String text;
  ListClickCallback listClickCallback;

  ListBasic(this.idx, this.text, this.listClickCallback);

  @override
  Widget build(BuildContext ctx) {
    return new Container(
      child: new FlatButton(
        onPressed: () => listClickCallback.onListClicked(idx),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            new Text(
              text,
              style: TextStyle(
                  letterSpacing: 2, fontSize: 12, color: Colors.white),
            ),
            Icon(
              Icons.navigate_next,
              color: Colors.white,
              size: 20,
            )
          ],
        ),
      ),
    );
  }
}

abstract class ListClickCallback {
  void onListClicked(int idx) {}
}

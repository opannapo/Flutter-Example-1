import 'package:flutter/material.dart';

class ListImageItems extends StatelessWidget {
  String image;

  ListImageItems(this.image);

  @override
  Widget build(BuildContext ctx) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
      width: 100,
      color: Colors.white,
      child: new Card(
        elevation: 3,
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(3.0),
        ),
        child: new ClipRRect(
            borderRadius: new BorderRadius.circular(5.0),
            child: new Image(
              image: new AssetImage(image),
              fit: BoxFit.cover,
            )),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_parallax/entities/TimelineTopicEntity.dart';
import 'package:flutter_parallax/styles/ColorsConst.dart';

class TimelineTopicItem extends StatelessWidget {
  TimelineTopicEntity topic;

  TimelineTopicItem(this.topic);

  @override
  Widget build(BuildContext ctx) {
    return Container(
      width: double.infinity,
      height: 250,
      margin: EdgeInsets.fromLTRB(10, 0, 10, 5),
      color: Colors.white,
      child: new Card(
        elevation: 3,
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(3.0),
        ),
        child: new ClipRRect(
          borderRadius: new BorderRadius.circular(5.0),
          child: new Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage(topic.image),
                fit: BoxFit.cover,
              ),
            ),
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                new Container(
                  padding: EdgeInsets.all(5),
                  width: double.infinity,
                  color: Colors.white.withOpacity(0.8),
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Text(
                        topic.title,
                        style: new TextStyle(
                            color: ColorsConst.base,
                            letterSpacing: 1,
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            fontFamily: 'helvetica'),
                      ),
                      new Container(
                        margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: new Text(
                          topic.content,
                          maxLines: 2,
                          style: new TextStyle(
                            color: Colors.black,
                            letterSpacing: 1,
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

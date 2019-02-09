import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_parallax/styles/ColorsConst.dart';
import 'package:flutter_parallax/styles/StyleConst.dart';

class PagerBannerItems extends StatefulWidget {
  String image;
  PageController controller;

  PagerBannerItems(this.image, this.controller);

  @override
  State<StatefulWidget> createState() {
    return new PagerBannerItemsState();
  }
}

class PagerBannerItemsState extends State<PagerBannerItems> {
  static const double speedCoefficient = 0.7;
  double initOffset;
  double viewportSize;
  double imageOffset = 0.0;

  void _handleScroll() {
    final double delta = widget.controller.offset - initOffset;
    final int viewportFraction =
        (100 * delta / viewportSize).round().clamp(-100, 100);
    final double offset = -1 * speedCoefficient * viewportFraction;

    if (offset != imageOffset) {
      setState(() {
        imageOffset = offset;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    initOffset = widget.controller.offset;
    viewportSize = widget.controller.position.viewportDimension;
    widget.controller.addListener(_handleScroll);
  }

  @override
  void dispose() {
    widget.controller?.removeListener(_handleScroll);
    super.dispose();
  }

  @override
  Widget build(BuildContext ctx) {
    double x = imageOffset / 100;
    var alignment = Alignment.center.add(new Alignment(x, 0.0));
    return Container(
      margin: EdgeInsets.all(5),
      child: new Card(
        elevation: 3,
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(3.0),
        ),
        child: new ClipRRect(
            borderRadius: new BorderRadius.circular(5.0),
            child: new Stack(
              alignment: alignment,
              fit: StackFit.expand,
              children: <Widget>[
                new Image(
                  alignment: alignment,
                  image: new AssetImage(widget.image),
                  fit: BoxFit.cover,
                ),
                new Container(
                  decoration: new BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    gradient: new LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [0.6, 0.80],
                      colors: [
                        Colors.transparent,
                        const Color(0xFF000000).withOpacity(0.7),
                      ],
                    ),
                  ),
                  padding: EdgeInsets.all(50),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.width,
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Text(
                          "Vel pharetra vel turpis nunc eget lorem dolor sed. Pulvinar sapien et ligula ullamcorper",
                          textAlign: TextAlign.justify,
                          style: TextStyleConst.b14(
                              color: ColorsConst.white, letterSpacing: 1)),
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}

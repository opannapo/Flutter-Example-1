import 'dart:math';

import 'package:flutter/material.dart';

class DotsIndicator extends AnimatedWidget {
  DotsIndicator({
    this.controller,
    this.itemCount,
    this.onPageSelected,
    this.colorActive: Colors.white,
    this.colorInActive: Colors.black54,
    this.spacing: 20,
    this.size: 5.0,
    this.activedZoom: 2.0,
    this.dotType: DotType.CIRCLE,
    this.icon: Icons.album,
  }) : super(listenable: controller);

  final DotType dotType;

  final PageController controller;

  final int itemCount;

  final ValueChanged<int> onPageSelected;

  final double spacing;

  final Color colorActive;

  final Color colorInActive;

  final double size;

  final double activedZoom;

  final IconData icon;

  Widget _buildDot(int index) {
    double selectedness = Curves.easeOut.transform(
      max(
        0.0,
        1.0 - ((controller.page ?? controller.initialPage) - index).abs(),
      ),
    );
    double opacity = Curves.easeOut.transform(
      max(
        0.3,
        1.0 - ((controller.page ?? controller.initialPage) - index).abs(),
      ),
    );

    Color colorsTwin =
        ColorTween(begin: colorInActive, end: colorActive).transform(
      max(0.0,
          1.0 - ((controller.page ?? controller.initialPage) - index).abs()),
    );

    double zoom = 1.0 + (activedZoom - 1.0) * selectedness;
    return dotType == DotType.CIRCLE
        ? dotCircle(colorsTwin, zoom, index)
        : dotType == DotType.BOX
            ? dotBox(colorsTwin, zoom, index)
            : dotIcon(icon, colorsTwin, zoom, index);
  }

  Widget build(BuildContext context) {
    return new Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: new List<Widget>.generate(itemCount, _buildDot),
    );
  }

  Widget dotCircle(colorsTwin, zoom, index) {
    return new Container(
      width: spacing,
      child: new Center(
        child: new Material(
          color: colorsTwin,
          type: MaterialType.circle,
          child: new Container(
            width: size * zoom,
            height: size * zoom,
            child: new InkWell(
              onTap: () => onPageSelected(index),
            ),
          ),
        ),
      ),
    );
  }

  Widget dotBox(colorsTwin, zoom, index) {
    return new Container(
      width: spacing,
      child: new Center(
        child: new Material(
          color: colorsTwin,
          type: MaterialType.card,
          child: new Container(
            width: size * zoom,
            height: size * zoom,
            child: new InkWell(
              onTap: () => onPageSelected(index),
            ),
          ),
        ),
      ),
    );
  }

  Widget dotIcon(icon, colorsTwin, zoom, index) {
    return new Container(
      width: spacing,
      child: new Center(
        child: new Material(
          color: colorsTwin,
          type: MaterialType.transparency,
          child: new Container(
            child: new InkWell(
              child: new Icon(
                icon,
                size: size * zoom,
                color: colorsTwin,
              ),
              onTap: () => onPageSelected(index),
            ),
          ),
        ),
      ),
    );
  }
}

enum DotType {
  CIRCLE,
  BOX,
  ICON,
}

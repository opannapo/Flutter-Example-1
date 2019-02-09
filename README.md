# Flutter Example [1]
Flutter Example, (ViewPager Parallax, VerticalList, HorizontalList, Tab, Custom Dot Indicator, Action Click, Clean)


# Output : 
### Running on Device (Ios & Android)

https://www.youtube.com/watch?v=zBGmVRNHBCo

<a href="https://www.youtube.com/embed/zBGmVRNHBCo" target="_blank"><img src="https://img.youtube.com/vi/zBGmVRNHBCo/0.jpg" 
alt="IMAGE ALT TEXT HERE" width="240" height="180" border="10" /></a>
 
 
# Point
- ViewPager - Parallax effect
- Custom Dot Indicator (ViewPager)
- AppBar
- TabBarView
- ListView Vertical
- ListView Horizontal
- Action Click
- State Management
- Bottom Navigation Bar 

 
### Dependencies
- flutter sdk
- cupertino_icons

### Assets
- Image
- Font


# Details

### 1. TabBarView
home/HomeView 

```Dart
...
 return new Scaffold(
        key: attr.scfdRootKey,
        ...
        body: TabBarView(
          controller: attr.tabControl,
          children: <Widget>[
            new TabHome(),
            new TabCat(),
            new TabLove(),
            new TabProfile(),
          ],
        ),
...
```

### 2. ViewPager Items, Parallax Effect
widgets/PagerBannerItems , type StatefulWidget


Calculation
```Dart
...
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
...
```

Alignment Implementation
```Dart
...
  @override
  Widget build(BuildContext ctx) {
    double x = imageOffset / 100;
    var alignment = Alignment.center.add(new Alignment(x, 0.0));
    return Container(
      margin: EdgeInsets.all(5),
      child: new Card(
        ...
        ...
        child: new ClipRRect(
            borderRadius: new BorderRadius.circular(5.0),
            child: new Stack(
              alignment: alignment,
              ...
              ... 
            )),
      ),
    );
  }
...
```



### 2. Dot Indicator, Multiple Types
widgets/DotsIndicator , type AnimatedWidget


Dot Type
```Dart
...
  enum DotType {
    CIRCLE,
    BOX,
    ICON,
  }
...
```


Implementation
tab_home/TabHomeView

```Dart
...
 new DotsIndicator(
    colorActive: ColorsConst.base,
    colorInActive: ColorsConst.white,
    controller: attr.bannerViewPagerControl,
    itemCount: attr.bannerImages.length,
    spacing: 12,
    size: 4.0,
    activedZoom: 1.5,
    dotType: DotType.BOX,
    icon: Icons.adjust,
    onPageSelected: (int page) {
      attr.bannerViewPagerControl.animateToPage(
        page,
        duration: Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    },
  ),
...
```

 

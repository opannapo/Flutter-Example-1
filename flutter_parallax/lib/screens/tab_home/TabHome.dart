import 'package:flutter/material.dart';
import 'package:flutter_parallax/entities/TimelineTopicEntity.dart';
import 'package:flutter_parallax/screens/tab_home/Attr.dart';
import 'package:flutter_parallax/screens/tab_home/TabHomeView.dart';
import 'package:flutter_parallax/widgets/ListImageItems.dart';
import 'package:flutter_parallax/widgets/PagerBannerItems.dart';
import 'package:flutter_parallax/widgets/TimelineTopicItem.dart';

class TabHome extends StatefulWidget {
  TabHome();

  @override
  State<StatefulWidget> createState() {
    print('HomeTabHome Create State ');
    return new TabHomeState();
  }
}

class TabHomeState extends State<TabHome>
    with AutomaticKeepAliveClientMixin<TabHome>
    implements ActionAbs {
  TabHomeState();

  Attr attr = new Attr();

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    attr.bannerViewPagerControl = new PageController(
      viewportFraction: 0.7,
      initialPage: 2,
    );

    setupBannerData();
    setupTopData();
    setupTopicData();
  }

  @override
  void dispose() {
    attr.bannerViewPagerControl.dispose();
    attr.keyScaffold.currentState.dispose();
    attr.totalViews = null;
    attr.bannerImages = null;
    attr.itemImages = null;
    attr.itemTopic = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => new TabHomeView(attr, this);

  @override
  void changeTab(int index) {
    // TODO: implement changeTab
  }

  @override
  void onPress() {
    final snackBar = SnackBar(
      content: Text('Tampil SnackBar!'),
      action: SnackBarAction(label: 'Close', onPressed: () {}),
    );

    attr.keyScaffold.currentState.showSnackBar(snackBar);
    setState(() {
      attr.totalViews++;
    });
  }

  void addTotalView() {
    setState(() {
      attr.totalViews++;
    });
  }

  void setupBannerData() {
    attr.bannerImages.add(new PagerBannerItems(
        "assets/banner/img1.jpg", attr.bannerViewPagerControl));
    attr.bannerImages.add(new PagerBannerItems(
        "assets/banner/img2.jpeg", attr.bannerViewPagerControl));
    attr.bannerImages.add(new PagerBannerItems(
        "assets/banner/img3.jpg", attr.bannerViewPagerControl));
    attr.bannerImages.add(new PagerBannerItems(
        "assets/banner/img4.jpg", attr.bannerViewPagerControl));
    attr.bannerImages.add(new PagerBannerItems(
        "assets/banner/img5.jpg", attr.bannerViewPagerControl));
  }

  void setupTopData() {
    attr.itemImages.add(new ListImageItems("assets/banner/img5.jpg"));
    attr.itemImages.add(new ListImageItems("assets/banner/img4.jpg"));
    attr.itemImages.add(new ListImageItems("assets/banner/img3.jpg"));
    attr.itemImages.add(new ListImageItems("assets/banner/img2.jpeg"));
    attr.itemImages.add(new ListImageItems("assets/banner/img1.jpg"));
    attr.itemImages.add(new ListImageItems("assets/banner/img2.jpeg"));
    attr.itemImages.add(new ListImageItems("assets/banner/img1.jpg"));
    attr.itemImages.add(new ListImageItems("assets/banner/img4.jpg"));
    attr.itemImages.add(new ListImageItems("assets/banner/img3.jpg"));
    attr.itemImages.add(new ListImageItems("assets/banner/img5.jpg"));
  }

  void setupTopicData() {
    TimelineTopicEntity e1 = new TimelineTopicEntity();
    TimelineTopicEntity e2 = new TimelineTopicEntity();
    TimelineTopicEntity e3 = new TimelineTopicEntity();
    TimelineTopicEntity e4 = new TimelineTopicEntity();
    TimelineTopicEntity e5 = new TimelineTopicEntity();

    e1.title = 'Makanan Sehat';
    e1.dateTime = 1548017606;
    e1.content =
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.';
    e1.image = "assets/topic/t1.jpg";

    e2.title = 'Resep Risol Abon';
    e2.dateTime = 1548104007;
    e2.content =
        'Sed blandit libero volutpat sed cras ornare arcu dui. Eu augue ut lectus arcu bibendum at varius vel pharetra. Donec ultrices tincidunt arcu non sodales neque. In hac habitasse platea dictumst vestibulum rhoncus est. Placerat orci nulla pellentesque dignissim enim. Mauris a diam maecenas sed enim ut sem viverra aliquet. Etiam erat velit scelerisque in dictum non consectetur a erat. Semper auctor neque vitae tempus quam pellentesque nec. Potenti nullam ac tortor vitae purus. Euismod in pellentesque massa placerat duis ultricies lacus. Non arcu risus quis varius. Nisl suscipit adipiscing bibendum est ultricies. Id semper risus in hendrerit gravida. Quam elementum pulvinar etiam non quam lacus suspendisse faucibus interdum.';
    e2.image = "assets/topic/t5.jpg";

    e3.title = 'Hati-hati dengan 7 makanan ini';
    e3.dateTime = 1548104007;
    e3.content =
        'Sed blandit libero volutpat sed cras ornare arcu dui. Eu augue ut lectus arcu bibendum at varius vel pharetra. Donec ultrices tincidunt arcu non sodales neque. In hac habitasse platea dictumst vestibulum rhoncus est. Placerat orci nulla pellentesque dignissim enim. Mauris a diam maecenas sed enim ut sem viverra aliquet. Etiam erat velit scelerisque in dictum non consectetur a erat. Semper auctor neque vitae tempus quam pellentesque nec. Potenti nullam ac tortor vitae purus. Euismod in pellentesque massa placerat duis ultricies lacus. Non arcu risus quis varius. Nisl suscipit adipiscing bibendum est ultricies. Id semper risus in hendrerit gravida. Quam elementum pulvinar etiam non quam lacus suspendisse faucibus interdum.';
    e3.image = "assets/topic/t2.jpg";

    e4.title = 'Event Jakarta-Foods';
    e4.dateTime = 1548190406;
    e4.content =
        'Id venenatis a condimentum vitae sapien. Elit eget gravida cum sociis natoque penatibus. Lectus urna duis convallis convallis tellus id interdum velit laoreet. Tempor commodo ullamcorper a lacus vestibulum sed. Tortor dignissim convallis aenean et. Purus ut faucibus pulvinar elementum integer. Lobortis feugiat vivamus at augue. Potenti nullam ac tortor vitae. Cras fermentum odio eu feugiat pretium nibh. Nisi lacus sed viverra tellus in hac habitasse platea. Tellus id interdum velit laoreet id donec ultrices tincidunt arcu.';
    e4.image = "assets/topic/t3.jpg";

    e5.title = 'Jakarta Halal Resto';
    e5.dateTime = 1548276806;
    e5.content =
        'Vel pharetra vel turpis nunc eget lorem dolor sed. Pulvinar sapien et ligula ullamcorper malesuada proin libero nunc. Scelerisque mauris pellentesque pulvinar pellentesque habitant. Volutpat consequat mauris nunc congue nisi vitae suscipit. Proin libero nunc consequat interdum varius sit amet mattis vulputate. Tellus id interdum velit laoreet. Non enim praesent elementum facilisis leo vel fringilla. Arcu vitae elementum curabitur vitae nunc sed velit dignissim. At tempor commodo ullamcorper a lacus vestibulum sed arcu. In nisl nisi scelerisque eu ultrices vitae auctor. At augue eget arcu dictum varius. Nec dui nunc mattis enim ut. Mauris rhoncus aenean vel elit scelerisque mauris. Non quam lacus suspendisse faucibus interdum. Tristique senectus et netus et malesuada fames ac. Elit pellentesque habitant morbi tristique. Facilisis mauris sit amet massa.';
    e5.image = "assets/topic/t4.jpg";

    attr.itemTopic.add(new TimelineTopicItem(e1));
    attr.itemTopic.add(new TimelineTopicItem(e2));
    attr.itemTopic.add(new TimelineTopicItem(e3));
    attr.itemTopic.add(new TimelineTopicItem(e4));
    attr.itemTopic.add(new TimelineTopicItem(e5));
  }

  @override
  void onShowAll(String flag) {
    final snackBar = SnackBar(
      content: Text('${flag}'),
      action: SnackBarAction(label: 'Close', onPressed: () {}),
    );

    attr.keyScaffold.currentState.showSnackBar(snackBar);
    setState(() {
      attr.totalViews++;
    });
  }
}

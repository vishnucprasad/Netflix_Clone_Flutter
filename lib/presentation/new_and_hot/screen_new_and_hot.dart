import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/new_and_hot/widgets/coming_soon_widget.dart';
import 'package:netflix_clone/presentation/new_and_hot/widgets/everyones_watching_widget.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          child: AppBar(
            title: const Text(
              'New & Hot',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w900,
              ),
            ),
            actions: [
              const Icon(
                Icons.cast,
                color: Colors.white,
                size: 30,
              ),
              kWidth,
              Container(
                width: 30,
                height: 30,
                color: Colors.blue,
              ),
              kWidth,
            ],
            bottom: const TabBar(
              isScrollable: true,
              labelColor: kBlackColor,
              labelPadding: EdgeInsets.symmetric(horizontal: 30),
              unselectedLabelColor: kWhiteColor,
              labelStyle: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              indicator: BubbleTabIndicator(
                indicatorHeight: 30,
                indicatorColor: kWhiteColor,
                tabBarIndicatorSize: TabBarIndicatorSize.tab,
              ),
              tabs: [
                Tab(
                  text: '🍿 Coming Soon',
                ),
                Tab(
                  text: "👀 Everyone's Watching",
                )
              ],
            ),
          ),
          preferredSize: const Size.fromHeight(90),
        ),
        body: TabBarView(
          children: [
            _buildComingSoon(),
            _buildEveryonesWatching(),
          ],
        ),
      ),
    );
  }

  Widget _buildComingSoon() {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context, index) => const ComingSoonWidget(),
    );
  }

  Widget _buildEveryonesWatching() {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context, index) =>
          const EveryonesWatchingWidget(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/home/widgets/number_title_card.dart';
import 'package:netflix_clone/presentation/widgets/main_title_card.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          MainTitleCard(title: 'Released in the Past Year'),
          kHeight,
          MainTitleCard(title: 'Trending Now'),
          kHeight,
          NumberTitleCard(),
          MainTitleCard(title: 'Tense Dramas'),
          kHeight,
          MainTitleCard(title: 'South Indian Cinema'),
          kHeight,
        ],
      ),
    );
  }
}

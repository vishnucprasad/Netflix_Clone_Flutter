import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/home/widgets/custom_button_widget.dart';
import 'package:netflix_clone/presentation/widgets/video_widget.dart';

class EveryonesWatchingWidget extends StatelessWidget {
  const EveryonesWatchingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kHeight,
        const Text(
          'KGF - Chapter 2',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        kHeight,
        const Text(
          'The blood-soaked land of Kolar Gold Fields (KGF) has a new overlord now - Rocky, whose name strikes fear in the heart of his foes. His allies look up to Rocky as their Savior, the government sees him as a threat to law and order; enemies are clamoring for revenge and conspiring for his downfall. Bloodier battles and darker days await as Rocky continues on his quest for unchallenged supremacy.',
          style: TextStyle(
            color: kGreyColor,
          ),
        ),
        kHeight50,
        const VideoWidget(),
        kHeight,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            CustomButtonWidget(
              icon: Icons.telegram,
              text: 'Share',
              iconSize: 30,
              textSize: 12,
            ),
            kWidth,
            CustomButtonWidget(
              icon: Icons.add,
              text: 'My List',
              iconSize: 30,
              textSize: 12,
            ),
            kWidth,
            CustomButtonWidget(
              icon: Icons.play_arrow,
              text: 'Play',
              iconSize: 30,
              textSize: 12,
            ),
            kWidth,
          ],
        ),
      ],
    );
  }
}

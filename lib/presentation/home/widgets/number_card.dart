import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants.dart';

class NumberCard extends StatelessWidget {
  final int index;
  const NumberCard({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            const SizedBox(
              width: 25,
              height: 150,
            ),
            Container(
              width: 125,
              height: 175,
              decoration: BoxDecoration(
                borderRadius: kRadius10,
                image: const DecorationImage(
                  image: NetworkImage(
                      'https://www.themoviedb.org/t/p/original/4wobXQ8VLfCHvgbevNMy8Rxvo41.jpg'),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          left: index == 0 ? 5 : -10,
          bottom: -20,
          child: BorderedText(
            strokeWidth: 3.0,
            strokeColor: Colors.white,
            child: Text(
              '${index + 1}',
              style: const TextStyle(
                fontSize: 120,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                decoration: TextDecoration.none,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

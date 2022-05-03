import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 125,
      height: 175,
      decoration: BoxDecoration(
        borderRadius: kRadius10,
        image: const DecorationImage(
          image: NetworkImage(
              'https://www.themoviedb.org/t/p/original/4wobXQ8VLfCHvgbevNMy8Rxvo41.jpg'),
        ),
      ),
    );
  }
}

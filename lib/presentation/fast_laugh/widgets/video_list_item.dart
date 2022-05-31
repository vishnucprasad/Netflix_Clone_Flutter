import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors.dart';

class VideoListItem extends StatelessWidget {
  final int index;
  const VideoListItem({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Left side
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.black.withOpacity(0.8),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.volume_off,
                      color: kWhiteColor,
                      size: 30,
                    ),
                  ),
                ),

                // Right side
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                        'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/ccIaLa4TLEu9tHLkuomdy31deNr.jpg',
                      ),
                    ),
                    VideoActionsWidget(
                      icon: Icons.emoji_emotions,
                      title: 'Lol',
                    ),
                    VideoActionsWidget(
                      icon: Icons.add,
                      title: 'My List',
                    ),
                    VideoActionsWidget(
                      icon: Icons.send,
                      title: 'Share',
                    ),
                    VideoActionsWidget(
                      icon: Icons.play_arrow,
                      title: 'Play',
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class VideoActionsWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  const VideoActionsWidget({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 30,
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}

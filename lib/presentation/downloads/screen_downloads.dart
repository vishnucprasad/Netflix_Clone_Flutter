import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/widgets/app_bar_widget.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({Key? key}) : super(key: key);
  final _widgetList = [
    const _SmartDownloads(),
    Section2(),
    const Section3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        child: AppBarWidget(
          title: 'Downloads',
        ),
        preferredSize: Size.fromHeight(50),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(10),
        itemBuilder: (ctx, index) => _widgetList[index],
        separatorBuilder: (ctx, index) => const SizedBox(
          height: 40,
        ),
        itemCount: _widgetList.length,
      ),
    );
  }
}

class Section2 extends StatelessWidget {
  Section2({Key? key}) : super(key: key);
  final List imageList = [
    'https://www.themoviedb.org/t/p/original/4wobXQ8VLfCHvgbevNMy8Rxvo41.jpg',
    'https://www.themoviedb.org/t/p/w220_and_h330_face/ncXklBeNi7X7OETqmDVEgaf8ItQ.jpg',
    'https://www.themoviedb.org/t/p/w220_and_h330_face/4hqtjslVCaDVgblg7iCtGIy7exO.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Text(
          'Introducing Downloads for you',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: kWhiteColor,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        kHeight,
        const Text(
          "We will download a personalized selection of\n movies and shows for you, so there's\n always something to watch on your\n device.",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 16,
          ),
        ),
        kHeight,
        SizedBox(
          width: size.width,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                radius: size.width * 0.3,
                backgroundColor: Colors.grey.withOpacity(0.3),
              ),
              DownloadsImageWidget(
                image: imageList[0],
                angle: 20,
                margin: const EdgeInsets.only(left: 150, bottom: 20),
                size: Size(size.width * 0.28, size.height * 0.18),
              ),
              DownloadsImageWidget(
                image: imageList[2],
                angle: 340,
                margin: const EdgeInsets.only(right: 150, bottom: 20),
                size: Size(size.width * 0.28, size.height * 0.18),
              ),
              DownloadsImageWidget(
                image: imageList[1],
                margin: const EdgeInsets.only(top: 15),
                size: Size(size.width * 0.32, size.height * 0.21),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SizedBox(
            width: double.infinity,
            child: MaterialButton(
              color: kButtonColorBlue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              onPressed: () {},
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  'Set up',
                  style: TextStyle(
                    color: kWhiteColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
        kHeight,
        MaterialButton(
          color: kButtonColorWhite,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          onPressed: () {},
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'See what you can download',
              style: TextStyle(
                color: kBlackColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        )
      ],
    );
  }
}

class _SmartDownloads extends StatelessWidget {
  const _SmartDownloads({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        kHeight,
        Row(
          children: const [
            Icon(
              Icons.settings,
              color: kWhiteColor,
            ),
            kWidth,
            Text(
              'Smart Downloads',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ],
    );
  }
}

class DownloadsImageWidget extends StatelessWidget {
  const DownloadsImageWidget({
    Key? key,
    required this.image,
    this.angle = 0,
    required this.margin,
    required this.size,
  }) : super(key: key);

  final String image;
  final double angle;
  final EdgeInsets margin;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margin,
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
              image,
            ),
          ),
        ),
      ),
    );
  }
}

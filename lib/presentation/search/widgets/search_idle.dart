import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/application/search/search_bloc.dart';
import 'package:netflix_clone/core/colors.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/search/widgets/search_text_title.dart';

const imageUrl =
    'https://www.themoviedb.org/t/p/original/sKIA8Gk8Ai4E59OhBcGiFBBPtgR.jpg';

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTextTitle(title: 'Top Searches'),
        kHeight20,
        Expanded(
          child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              if (state.isLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state.isError) {
                return const Center(
                  child: Text('Error while getting search result'),
                );
              } else if (state.idleList.isEmpty) {
                return const Center(
                  child: Text('List is empty'),
                );
              }
              return ListView.separated(
                itemBuilder: (ctx, index) {
                  final movie = state.idleList[index];
                  return TopSearchItemTile(
                    title: movie.title ?? 'No title provided',
                    posterUrl: '$imageAppendUrl${movie.posterPath}',
                  );
                },
                separatorBuilder: (ctx, index) => kHeight20,
                itemCount: state.idleList.length,
              );
            },
          ),
        ),
      ],
    );
  }
}

class TopSearchItemTile extends StatelessWidget {
  final String title;
  final String posterUrl;
  const TopSearchItemTile({
    Key? key,
    required this.title,
    required this.posterUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: screenWidth * 0.35,
          height: 75,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(posterUrl),
            ),
          ),
        ),
        kWidth,
        Expanded(
          child: Text(
            title,
            style: const TextStyle(
              color: kWhiteColor,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
        const Icon(
          CupertinoIcons.play_circle,
          size: 48,
          color: kWhiteColor,
        )
      ],
    );
  }
}

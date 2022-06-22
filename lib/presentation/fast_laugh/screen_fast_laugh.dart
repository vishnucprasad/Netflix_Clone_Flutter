import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/application/fast_laugh/fastlaugh_bloc.dart';
import 'package:netflix_clone/presentation/fast_laugh/widgets/video_list_item.dart';

class ScreenFastLaugh extends StatelessWidget {
  const ScreenFastLaugh({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<FastlaughBloc>(context).add(const Initialize());
    });
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<FastlaughBloc, FastlaughState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const Center(
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                ),
              );
            } else if (state.isError) {
              return const Center(
                child: Text('Error while getting data'),
              );
            } else if (state.videosList.isEmpty) {
              return const Center(
                child: Text('Video list empty'),
              );
            } else {
              return PageView(
                scrollDirection: Axis.vertical,
                children: List.generate(
                  state.videosList.length,
                  (index) => VideoListItemInheritedWidget(
                    widget: VideoListItem(
                      key: Key(index.toString()),
                      index: index,
                    ),
                    movieData: state.videosList[index],
                  ),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}

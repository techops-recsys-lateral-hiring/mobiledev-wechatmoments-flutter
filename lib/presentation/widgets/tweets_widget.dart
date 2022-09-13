import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/moment_view_cubit.dart';

class TweetsWidget extends StatelessWidget {
  final MomentViewCubit momentViewCubit;
  const TweetsWidget({Key? key, required this.momentViewCubit})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
        bloc: momentViewCubit,
        buildWhen: (_, state) => state is MomentViewTweetsSucccessState,
        builder: (context, state) {
          if (state is MomentViewTweetsSucccessState) {
            return ListView.separated(
                itemCount: state.tweets.length,
                padding: EdgeInsets.zero,
                physics: const ClampingScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) => Container(
                      height: 1,
                      color: Colors.grey.withOpacity(0.2),
                    ),
                itemBuilder: (context, index) {
                  return ListTile(
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                    leading: Image.network(
                      'https://www.solidbackgrounds.com/images/1920x1080/1920x1080-gray-solid-color-background.jpg',
                      height: 40,
                      width: 40,
                      fit: BoxFit.cover,
                    ),
                    title: const Text(''),
                    subtitle: Text(
                      state.tweets[index].content ?? '',
                      style: const TextStyle(color: Colors.black, fontSize: 14),
                    ),
                  );
                });
          }
          return const SizedBox.shrink();
        });
  }
}

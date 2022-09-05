import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobiledev_wechatmoments_flutter/presentation/cubit/moment_view_cubit.dart';

import '../../model/mymodels.dart';

class HeaderWidget extends StatelessWidget {
  final MomentViewCubit momentViewCubit;
  const HeaderWidget({Key? key, required this.momentViewCubit})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
        bloc: momentViewCubit,
        buildWhen: (_, state) =>
            state is MomentViewSuccessState ||
            state is MomentViewErrorState ||
            state is MomentViewLoadingState,
        builder: (context, state) {
          if (state is MomentViewSuccessState) {
            final User user = state.user;
            return Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 2.3,
                  child: Stack(
                    children: [
                      Image.network(
                        'https://www.solidbackgrounds.com/images/1920x1080/1920x1080-gray-solid-color-background.jpg',
                        height: MediaQuery.of(context).size.height / 2.6,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      const Positioned(
                        bottom: 50,
                        right: 110,
                        child: Text(
                          '',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 10,
                        child: Image.network(
                          'https://www.solidbackgrounds.com/images/125x125/125x125-antique-white-solid-color-background.jpg',
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          } else if (state is MomentViewLoadingState) {
            return const CircularProgressIndicator();
          } else if (state is MomentViewErrorState) {
            return const Padding(
              padding: EdgeInsets.only(top: 40.0, left: 20),
              child: Text('Something went wrong'),
            );
          } else {
            return const SizedBox.shrink();
          }
        });
  }
}

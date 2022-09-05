import 'package:flutter/material.dart';
import 'package:mobiledev_wechatmoments_flutter/presentation/cubit/moment_view_cubit.dart';
import 'package:mobiledev_wechatmoments_flutter/presentation/widgets/header_widget.dart';
import 'package:mobiledev_wechatmoments_flutter/presentation/widgets/tweets_widget.dart';

class MomentViewPage extends StatefulWidget {
  const MomentViewPage({Key? key}) : super(key: key);

  @override
  State<MomentViewPage> createState() => _MomentViewPageState();
}

class _MomentViewPageState extends State<MomentViewPage> {
  final MomentViewCubit _momentViewCubit = MomentViewCubit();

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() {
    _momentViewCubit.getUserProfile();
    _momentViewCubit.getUserTweets();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [getHeaderWidget(), getTweetsWidget()],
        ),
      ),
    );
  }

  Widget getHeaderWidget() {
    return HeaderWidget(momentViewCubit: _momentViewCubit);
  }

  Widget getTweetsWidget() {
    return TweetsWidget(momentViewCubit: _momentViewCubit);
  }
}

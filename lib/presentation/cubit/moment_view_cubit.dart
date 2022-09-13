import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobiledev_wechatmoments_flutter/config/constants.dart';
import 'package:mobiledev_wechatmoments_flutter/model/mymodels.dart';
import 'package:mobiledev_wechatmoments_flutter/service/tweet_service.dart';
import 'package:mobiledev_wechatmoments_flutter/service/user_service.dart';

class MomentViewCubit extends Cubit<MomentViewState> {
  MomentViewCubit() : super(MomentViewState.onDefaultState());

  final UserService userService = UserService();

  final TweetService tweetService = TweetService();

  getUserProfile() async {
    try {
      final response = await userService.getUserProfile(Constants.userName);
      emit(MomentViewState.onSuccessState(response));
    } catch (e) {
      emit(MomentViewState.onErrorState(e.toString()));
    }
  }

  getUserTweets() async {
    try {
      final response = await tweetService.getTweets(Constants.userName);

      List<Tweet> tweetsList = [];
      tweetsList = response.cast<Tweet>();
      emit(MomentViewState.onTweetsSuccessState(tweetsList));
    } catch (e) {
      emit(MomentViewState.onErrorState(e.toString()));
    }
  }
}

abstract class MomentViewState {
  const MomentViewState._();

  factory MomentViewState.onDefaultState() => const MomentViewInitial._();

  factory MomentViewState.onLoadingState() => const MomentViewLoadingState._();

  factory MomentViewState.onSuccessState(User user) =>
      MomentViewSuccessState._(user);

  factory MomentViewState.onTweetsSuccessState(List<Tweet> tweets) =>
      MomentViewTweetsSucccessState._(tweets);

  factory MomentViewState.onEmptyState() => const MomentViewEmptyState._();

  factory MomentViewState.onErrorState(String errorMessage) =>
      MomentViewErrorState._(errorMessage: errorMessage);
}

class MomentViewInitial extends MomentViewState {
  const MomentViewInitial._() : super._();
}

class MomentViewLoadingState extends MomentViewState {
  const MomentViewLoadingState._() : super._();
}

class MomentViewSuccessState extends MomentViewState {
  final User user;
  const MomentViewSuccessState._(this.user) : super._();
}

class MomentViewTweetsSucccessState extends MomentViewState {
  final List<Tweet> tweets;
  const MomentViewTweetsSucccessState._(this.tweets) : super._();
}

class MomentViewEmptyState extends MomentViewState {
  const MomentViewEmptyState._() : super._();
}

class MomentViewErrorState extends MomentViewState {
  final String? errorMessage;

  const MomentViewErrorState._({this.errorMessage}) : super._();
}

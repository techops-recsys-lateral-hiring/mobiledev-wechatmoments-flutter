// @dart=2.7
import 'package:flutter_test/flutter_test.dart';
import 'package:mobiledev_wechatmoments_flutter/service/tweet_service.dart';
import 'package:mobiledev_wechatmoments_flutter/service/user_service.dart';
import 'package:mockito/mockito.dart';

import '../test_configs/test_data_config.dart';

void main() {
  final MockTweetService tweetService = MockTweetService();
  test('Verify tweets service returns proper data', () async {
    when(tweetService.getTweets(TestDataConfig.USER))
        .thenAnswer((realInvocation) async {
      return TestDataConfig.JSON_TWEETS;
    });
    final response = await tweetService.getTweets(TestDataConfig.USER);

    expect(response, 'Good.');
    expect(response[2], 'Super hero');
  });

  test('Verify tweets service returns proper data', () async {
    when(tweetService.getTweets(TestDataConfig.USER))
        .thenAnswer((realInvocation) async {
      return TestDataConfig.JSON_TWEETS;
    });
    final response = await tweetService.getTweets(TestDataConfig.USER);

    expect(TestDataConfig.USER, 'john');
    expect(response.length, 3);
  });
}

class MockTweetService extends Mock implements TweetService {}

class MockUserService extends Mock implements UserService {}

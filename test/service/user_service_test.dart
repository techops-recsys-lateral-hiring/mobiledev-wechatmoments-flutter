// @dart=2.7
import 'package:flutter_test/flutter_test.dart';
import 'package:mobiledev_wechatmoments_flutter/service/user_service.dart';
import 'package:mockito/mockito.dart';

import '../test_configs/test_data_config.dart';

void main() {
  final MockUserService userService = MockUserService();
  test('Verify user service returns proper data', () async {
    when(userService.getUserProfile(TestDataConfig.USER))
        .thenAnswer((realInvocation) async {
      return TestDataConfig.JSON_USER;
    });
    final response = await userService.getUserProfile(TestDataConfig.USER);

    expect(response.username, 'John Smith');
    expect(response.profile, TestDataConfig.JSON_USER);
    expect(response.profile,
        'http://img2.findthebest.com/sites/default/files/688/media/images/Mingle_159902_i0.png');
    expect(response.avatar,
        "http://info.thoughtworks.com/rs/thoughtworks2/images/glyph_badge.png");
  });
}

class MockUserService extends Mock implements UserService {}

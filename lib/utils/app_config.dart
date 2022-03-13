class AppConfig {
  static String MAP_API_KEY = 'AIzaSyCXhCQ_yU8qBoKVN1H4QjmMnptAGY6_NAk';
  static const MAX_ITEM_ORDER = 999;
  static TestConfig? _testConfig;

  static set testConfig(TestConfig value) {
    _testConfig ??= value;
  }

  static TestConfig get testConfig {
    _testConfig ??= TestConfig(isTesting: false);
    return _testConfig!;
  }
}

class TestConfig {
  final bool isTesting;
  // final bool bypassPermission;

  TestConfig({this.isTesting = false,});

  factory TestConfig.notTesting() {
    return TestConfig(isTesting: false);
  }

  factory TestConfig.testing() {
    return TestConfig(isTesting: true,);
  }
}

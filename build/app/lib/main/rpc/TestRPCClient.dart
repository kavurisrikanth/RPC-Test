import 'package:annotest/main/models/TestModel.dart';

class TestRPCClient {
  static TestRPCClient _ins;

  static TestRPCClient get() {
    if (_ins == null) {
      _ins = TestRPCClient();
    }
    return _ins;
  }

  Future<int> getNumber() {}

  Future<int> getNumberFromModel(TestModel m) {}

  Future<TestModel> getModelByNumber(int num) {}
}

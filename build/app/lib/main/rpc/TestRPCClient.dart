import '../models/TestModel.dart';
import 'dart:async';

class TestRPCClient {
  static TestRPCClient _ins;
  static TestRPCClient get() {
    if (_ins == null) {
      _ins = TestRPCClient();
    }

    return _ins;
  }

  Future<int> getNumber() async {}
  Future<int> getNumberFromModel(TestModel m) async {}
  Future<TestModel> getModelByNumber(int x) async {}
}

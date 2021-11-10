import '../models/TestModel.dart';
import 'dart:async';

class TestRPCClient {
  Future<int> getNumber() async {}
  Future<int> getNumberFromModel(TestModel m) async {}
  Future<TestModel> getModelByNumber(int x) async {}
}

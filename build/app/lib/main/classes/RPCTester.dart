import '../models/TestModel.dart';
import '../rpc/RPCServices.dart';
import 'dart:async';

class RPCTester {
  RPCTester();
  static Future<String> getNumber() async {
    int value = (await RPCServices.getTestRPC().getNumber());

    return value.toString();
  }

  static Future<String> getNumberFromModel(TestModel m) async {
    int value = (await RPCServices.getTestRPC().getNumberFromModel(m));

    return value.toString();
  }

  static Future<String> getModelByNumber(int num) async {
    TestModel m = (await RPCServices.getTestRPC().getModelByNumber(num));

    return '';
  }
}

import 'TestRPCClient.dart';

class RPCServices {
  static TestRPCClient _testRPC;
  static TestRPCClient getTestRPC() {
    if (_testRPC == null) {
      _testRPC = TestRPCClient();
    }

    return _testRPC;
  }
}

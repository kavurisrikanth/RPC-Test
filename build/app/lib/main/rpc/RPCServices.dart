import 'package:annotest/main/rpc/TestRPCClient.dart';

class RPCServices {
  static TestRPCClient getTestRPC() {
    return TestRPCClient.get();
  }
}

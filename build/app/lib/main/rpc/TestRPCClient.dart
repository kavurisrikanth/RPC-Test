import 'package:annotest/main/classes/core.dart';
import 'package:annotest/main/rocket/MessageDispatch.dart';
import 'package:annotest/main/rocket/Template.dart';
import 'package:annotest/main/rocket/WSReader.dart';
import 'package:annotest/main/rocket/WSWriter.dart';

import '../models/TestModel.dart';
import 'dart:async';

class TestRPCClient {
  Future<int> getNumber() async {
    WSReader r = await MessageDispatch.get()
        .rpcMessage(RPCConstants.TestRPC, RPCConstants.TestRPCGetNumber);

    return r.readInteger();
  }

  Future<int> getNumberFromModel(TestModel m) async {
    Consumer<WSWriter> _w = (w) {
      w.writeRef(m);
    };

    WSReader r = await MessageDispatch.get().rpcMessage(
        RPCConstants.TestRPC, RPCConstants.TestRPCGetNumber,
        args: _w);

    return r.readInteger();
  }

  Future<TestModel> getModelByNumber(int x) async {
    Consumer<WSWriter> _w = (w) {
      w.writeInteger(x);
    };

    WSReader r = await MessageDispatch.get().rpcMessage(
        RPCConstants.TestRPC, RPCConstants.TestRPCGetNumber,
        args: _w);

    return r.readRef(0, null);
  }
}

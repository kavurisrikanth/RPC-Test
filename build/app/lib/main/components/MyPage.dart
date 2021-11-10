import '../utils/ObservableState.dart';
import '../classes/BlahClient.dart';
import '../classes/BlahClientImpl.dart';
import '../classes/BlahServer.dart';
import '../classes/RPCTester.dart';
import '../models/TestModel.dart';
import '../rocket/Channels.dart';
import '../rocket/ClientChannel.dart';
import 'package:flutter/widgets.dart';

class MyPage extends StatefulWidget {
  MyPage({Key key}) : super(key: key);
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends ObservableState<MyPage> {
  @override
  initState() {
    super.initState();

    initListeners();

    enableBuild = true;

    onInit();
  }

  void initListeners() {}
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text((await RPCTester.getNumber())),
      Text((await RPCTester.getNumberFromModel(TestModel()))),
      Text((await RPCTester.getModelByNumber(23)))
    ]);
  }

  void onInit() async {
    BlahClient _client = BlahClientImpl();

    ClientChannel<BlahServer, BlahClient> channel = Channels.getBlahChannel();

    BlahServer _server = (await channel.connect(_client));

    if (_server != null) {
      _server.go(123);
    }
  }
}

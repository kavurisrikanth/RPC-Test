import '../utils/ObservableState.dart';
import '../classes/RPCTester.dart';
import '../models/TestModel.dart';
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
}

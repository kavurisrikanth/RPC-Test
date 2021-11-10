import '../rocket/Template.dart';
import '../classes/BlahClient.dart';
import '../classes/BlahServer.dart';
import 'ClientChannel.dart';
import 'MessageDispatch.dart';
import 'WSReader.dart';
import 'WSWriter.dart';

class BlahServerProxy implements BlahServer {
  bool connected = true;
  BlahClient handler;
  static BlahServerProxy _INS;
  void go(int num) {
    checkConnection();

    WSWriter w = MessageDispatch.get()
        .channelMessage(ChannelConstants.Blah, ChannelConstants.BlahServerGo);

    w.writeInt(num);

    MessageDispatch.get().send(w);
  }

  void checkConnection() {}
}

class Channels {
  static ClientChannel<BlahServer, BlahClient> _blah;
  static ClientChannel<BlahServer, BlahClient> getBlahChannel() {
    if (_blah == null) {
      _blah = ClientChannel<BlahServer, BlahClient>(
          ChannelConstants.Blah, BlahServerProxy(), () {
        _blah = null;
      });
    }

    return _blah;
  }

  static void onMessage(WSReader reader) {
    int channel = reader.readInteger();

    switch (channel) {
      case ChannelConstants.Blah:
        {
          onBlahMessage(reader);
          break;
        }
    }
  }

  static void onBlahMessage(WSReader reader) {
    int channel = reader.readInteger();

    switch (channel) {
    }
  }
}

package rest.ws;

import classes.BlahServer;
import d3e.core.ChannelConstants;
import org.springframework.stereotype.Service;
import store.EntityHelperService;

@Service
public class Channels extends AbstractChannels {
  protected AbstractClientProxy getChannelClientProxy(
      int idx, ClientSession ses, EntityHelperService helperService, Template template) {
    AbstractClientProxy proxy = null;
    switch (idx) {
      case ChannelConstants.Blah:
        {
          proxy = new BlahClientProxy(ses, helperService, template);
          break;
        }
    }
    return proxy;
  }

  protected void handleChannelMessage(
      int idx, int msgSrvIdx, RocketInputContext ctx, ServerChannel channel) {
    switch (idx) {
      case ChannelConstants.Blah:
        {
          onBlahMessage(((BlahServer) channel), msgSrvIdx, ctx);
          break;
        }
    }
  }

  public void onBlahMessage(BlahServer channel, int msgSrvIdx, RocketInputContext ctx) {
    switch (msgSrvIdx) {
      case ChannelConstants.BlahServerGo:
        {
          long num = ctx.readLong();
          channel.go(num);
          break;
        }
    }
  }
}

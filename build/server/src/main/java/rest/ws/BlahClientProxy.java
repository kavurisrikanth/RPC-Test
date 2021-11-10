package rest.ws;

import classes.BlahClient;
import d3e.core.ChannelConstants;
import store.EntityHelperService;

public class BlahClientProxy extends AbstractClientProxy implements BlahClient {
  private ClientSession session;
  private EntityHelperService helperService;
  private Template template;

  public BlahClientProxy(
      ClientSession session, EntityHelperService helperService, Template template) {
    this.session = session;
    this.helperService = helperService;
    this.template = template;
  }

  public void come(long num) {
    RocketMessage out = createMessage(ChannelConstants.Blah, ChannelConstants.BlahClientCome);
    out.writeLong(num);
    send(out);
  }

  public String getChannelName() {
    /*
    TODO: Maybe remove
    */
    return "blah";
  }

  public ClientSession getSession() {
    return this.session;
  }
}

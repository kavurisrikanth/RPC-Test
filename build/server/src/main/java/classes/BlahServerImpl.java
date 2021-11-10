package classes;

import org.springframework.stereotype.Service;
import rest.ws.ServerChannel;

@Service("blah")
public class BlahServerImpl extends ServerChannel<BlahClient> implements BlahServer {
  public void go(long num) {}
}

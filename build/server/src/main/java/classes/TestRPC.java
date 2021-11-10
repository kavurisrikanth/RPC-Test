package classes;

import models.TestModel;

public class TestRPC {
  public TestRPC() {}

  public static long getNumber() {
    return -1l;
  }

  public static long getNumberFromModel(TestModel m) {
    return 2l;
  }

  public static TestModel getModelByNumber(long x) {
    return null;
  }
}

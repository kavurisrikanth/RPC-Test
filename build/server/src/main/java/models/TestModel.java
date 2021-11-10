package models;

import d3e.core.CloneContext;
import d3e.core.SchemaConstants;
import java.util.Objects;
import java.util.function.Consumer;
import javax.persistence.Entity;
import org.apache.solr.client.solrj.beans.Field;
import org.springframework.data.solr.core.mapping.SolrDocument;
import store.DatabaseObject;
import store.ICloneable;

@SolrDocument(collection = "TestModel")
@Entity
public class TestModel extends CreatableObject {
  public static final int _NUMBER = 0;
  @Field private long number = 0l;

  @Override
  public int _typeIdx() {
    return SchemaConstants.TestModel;
  }

  @Override
  public String _type() {
    return "TestModel";
  }

  @Override
  public int _fieldsCount() {
    return 1;
  }

  public void updateMasters(Consumer<DatabaseObject> visitor) {
    super.updateMasters(visitor);
  }

  public long getNumber() {
    _checkProxy();
    return this.number;
  }

  public void setNumber(long number) {
    _checkProxy();
    if (Objects.equals(this.number, number)) {
      return;
    }
    fieldChanged(_NUMBER, this.number);
    this.number = number;
  }

  public String displayName() {
    return "TestModel";
  }

  @Override
  public boolean equals(Object a) {
    return a instanceof TestModel && super.equals(a);
  }

  public TestModel deepClone(boolean clearId) {
    CloneContext ctx = new CloneContext(clearId);
    return ctx.startClone(this);
  }

  public void deepCloneIntoObj(ICloneable dbObj, CloneContext ctx) {
    super.deepCloneIntoObj(dbObj, ctx);
    TestModel _obj = ((TestModel) dbObj);
    _obj.setNumber(number);
  }

  public TestModel cloneInstance(TestModel cloneObj) {
    if (cloneObj == null) {
      cloneObj = new TestModel();
    }
    super.cloneInstance(cloneObj);
    cloneObj.setNumber(this.getNumber());
    return cloneObj;
  }

  public TestModel createNewInstance() {
    return new TestModel();
  }

  @Override
  public boolean _isEntity() {
    return true;
  }
}

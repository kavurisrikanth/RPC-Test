package repository.jpa;

import d3e.core.SchemaConstants;
import models.TestModel;
import org.springframework.stereotype.Service;

@Service
public class TestModelRepository extends AbstractD3ERepository<TestModel> {
  public int getTypeIndex() {
    return SchemaConstants.TestModel;
  }
}

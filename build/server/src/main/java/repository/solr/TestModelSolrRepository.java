package repository.solr;

@org.springframework.stereotype.Repository
public interface TestModelSolrRepository
    extends org.springframework.data.solr.repository.SolrCrudRepository<models.TestModel, Long> {}


package acme.features.administrator.chart;

import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import acme.framework.repositories.AbstractRepository;

@Repository
public interface AdministratorChartRepository extends AbstractRepository {

	@Query("select count(h), h.sector from CompanyRecord h group by h.sector")
	Object[] companiesBySector();

	@Query("select count(h), h.sector from InvestorRecord h group by h.sector")
	Object[] investorsBySector();
}

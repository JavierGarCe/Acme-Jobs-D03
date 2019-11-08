
package acme.features.administrator.chart;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import acme.forms.chart.Chart;
import acme.framework.components.Model;
import acme.framework.components.Request;
import acme.framework.entities.Administrator;
import acme.framework.services.AbstractShowService;

@Service
public class AdministratorChartShowService implements AbstractShowService<Administrator, Chart> {

	@Autowired
	AdministratorChartRepository repository;


	@Override
	public boolean authorise(final Request<Chart> request) {

		assert request != null;

		return true;

	}

	@Override
	public void unbind(final Request<Chart> request, final Chart entity, final Model model) {
		assert request != null;
		assert entity != null;
		assert model != null;

		request.unbind(entity, model, "companiesBySector", "investorsBySector");

	}

	@Override
	public Chart findOne(final Request<Chart> request) {
		assert request != null;

		Chart res = new Chart();
		res.setCompaniesBySector(this.repository.companiesBySector());
		res.setInvestorsBySector(this.repository.investorsBySector());
		return res;

	}

}

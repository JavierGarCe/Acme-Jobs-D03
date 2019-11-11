
package acme.features.administrator.investorRecord;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import acme.entities.investorRecord.InvestorRecord;
import acme.framework.components.Errors;
import acme.framework.components.Model;
import acme.framework.components.Request;
import acme.framework.datatypes.Money;
import acme.framework.entities.Administrator;
import acme.framework.services.AbstractCreateService;

@Service
public class AdministratorInvestorRecordCreateService implements AbstractCreateService<Administrator, InvestorRecord> {

	@Autowired
	AdministratorInvestorRecordRepository repository;


	@Override
	public boolean authorise(final Request<InvestorRecord> request) {
		assert request != null;

		return true;
	}

	@Override
	public void bind(final Request<InvestorRecord> request, final InvestorRecord entity, final Errors errors) {
		assert request != null;
		assert entity != null;
		assert errors != null;

		request.bind(entity, errors);

	}

	@Override
	public void unbind(final Request<InvestorRecord> request, final InvestorRecord entity, final Model model) {
		assert request != null;
		assert entity != null;
		assert model != null;

		request.unbind(entity, model, "name", "sector", "investingStatement", "stars");
	}

	@Override
	public InvestorRecord instantiate(final Request<InvestorRecord> request) {
		InvestorRecord result;

		result = new InvestorRecord();

		return result;
	}

	@Override
	public void validate(final Request<InvestorRecord> request, final InvestorRecord entity, final Errors errors) {
		assert request != null;
		assert entity != null;
		assert errors != null;

		Money money = entity.getInvestingStatement();

		if (request.getLocale().getDisplayLanguage().equals("English")) {
			try {
				if (money.getAmount() <= 0) {
					errors.add("investingStatement", "Money amount must be greater than zero");
				}
				if (!money.getCurrency().equals("€")) {
					errors.add("investingStatement", "Money currency must be Euros (€)");
				}
			} catch (Exception e) {
				errors.add("investingStatement", "Format is either '€ amount' or 'amount €'");
			}

		} else {
			try {
				if (money.getAmount() <= 0) {
					errors.add("investingStatement", "La cantidad de dinero debe ser mayor de 0");
				}
				if (!money.getCurrency().equals("€")) {
					errors.add("investingStatement", "La moneda debe ser Euros (€)");
				}
			} catch (Exception e) {
				errors.add("investingStatement", "El formato debe ser 'cantidad €' o '€ cantidad'");
			}
		}

	}

	@Override
	public void create(final Request<InvestorRecord> request, final InvestorRecord entity) {
		this.repository.save(entity);
	}

}

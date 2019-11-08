
package acme.entities.requests;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Past;
import javax.validation.constraints.Pattern;

import acme.framework.datatypes.Money;
import acme.framework.entities.DomainEntity;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
public class Requests extends DomainEntity {

	// Serialisation identifier -----------------------------------------------

	private static final long	serialVersionUID	= 1L;

	// Attributes -------------------------------------------------------------

	@NotBlank
	private String				title;

	@NotBlank
	private String				moreInfo;

	private Money				reward;

	@NotBlank
	@Pattern(regexp = "^R[A-Z,a-z]{4}-[0-9]{5}$")
	@Column(unique = true)
	private String				ticker;

	@Temporal(TemporalType.TIMESTAMP)
	private Date				deadline;

	@Temporal(TemporalType.TIMESTAMP)
	@Past
	private Date				moment;
}


package acme.entities.challenges;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Future;
import javax.validation.constraints.NotBlank;

import acme.framework.entities.DomainEntity;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter

public class Challenge extends DomainEntity {

	//Serialisation identifier -------------------------------------------------
	private static final long	serialVersionUID	= 1L;
	//Attributes ---------------------------------------------------------------
	@NotBlank
	private String				title;
	@Temporal(TemporalType.TIMESTAMP)
	@Future
	private Date				deadline;
	@NotBlank
	private String				description;
	@NotBlank
	private String				goldGoal;
	@NotBlank
	private String				silverGoal;
	@NotBlank
	private String				bronzeGoal;
	@NotBlank
	private String				goldReward;
	@NotBlank
	private String				silverReward;
	@NotBlank
	private String				bronzeReward;

}


package acme.forms.chart;

import java.io.Serializable;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Chart implements Serializable {

	private static final long	serialVersionUID	= 1L;
	Object[]					companiesBySector;
	Object[]					investorsBySector;
	Object[]					sectores;
}

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>

<%@taglib prefix="acme" tagdir="/WEB-INF/tags"%>


<div>

	<canvas id="canvas"></canvas>

</div>



<script type="text/javascript">

	$(document).ready(function(){

		var data = {

			labels : [
				<jstl:forEach var ="i" items="${companiesBySector}" varStatus="status">
				"<jstl:out value='${i[1]}'/>",
				</jstl:forEach>
				
				<jstl:forEach var ="i" items="${investorsBySector}" varStatus="status">
				<jstl:choose>
				<jstl:when test="${status.last}">
				"<jstl:out value='${i[1]}'/>"
				</jstl:when>
				<jstl:when test="${!status.last}">
				"<jstl:out value='${i[1]}'/>",
				</jstl:when>
				</jstl:choose>
				</jstl:forEach>
				
				

				],

			datasets : [

				{

					backgroundColor:"rgba(0, 0, 1, 1)",

					label:"<acme:message code='companiesbysector'/>",

					data :[
						<jstl:forEach var ="i" items="${companiesBySector}" varStatus="status">
						<jstl:out value='${i[0]}'/>,
						</jstl:forEach>
						<jstl:forEach var ="i" items="${investorsBySector}" varStatus="status">
						<jstl:out value='0'/>,
						</jstl:forEach>
						
						

				 	]

				},
				
				{

					backgroundColor:"rgba(255, 0, 0, 0.8)",

					label:"<acme:message code='investorsbysector'/>",

					data :[
						<jstl:forEach var ="i" items="${companiesBySector}" varStatus="status">
						<jstl:out value='0'/>,
						</jstl:forEach>
						<jstl:forEach var ="i" items="${investorsBySector}" varStatus="status">
						<jstl:out value='${i[0]}'/>,
						</jstl:forEach>

				 	]

				}

				

			]

		};

		var options = {

			scales : {

				yAxes : [

					{

						ticks : {

							suggestedMin : 0.0,

							suggestedMax : 1.0

						}

					}

				]

			},

			legend : {

				display: true

			}

		};

	

		var canvas, context;

		canvas=document.getElementById("canvas");

		context=canvas.getContext("2d");

		new Chart( context, {

			type : "bar",

			data : data,

			options : options

		});

	});

	

</script>
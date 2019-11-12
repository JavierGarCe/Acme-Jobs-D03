<%@page language="java"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="acme" tagdir="/WEB-INF/tags"%>

<acme:form>
	<acme:form-textbox code="consumer.offer.form.labbel.title" path="title"/>
	<jstl:if test="${command != 'create'}">
	<acme:form-moment code="consumer.offer.form.labbel.moment" path="moment" readonly="true"/>
	</jstl:if>
	
	<acme:form-moment code="consumer.offer.form.labbel.deadline" path="deadline"/>
	<acme:form-textarea code="consumer.offer.form.label.description" path="description"/>
	<acme:form-textbox code="consumer.offer.form.labbel.ticker" path="ticker"/>
	<acme:form-panel code="consumer.offer.form.panel.reward">
	<acme:form-textbox code="consumer.offer.form.labbel.minReward" path="minReward"/>
	<acme:form-textbox code="consumer.offer.form.labbel.maxReward" path="maxReward"/>
	</acme:form-panel>
	
	<acme:form-submit test="${command == 'create'}" code="consumer.offer.form.button.create" action="/consumer/offer/create"/>
	<acme:form-return code="consumer.offer.form.button.return"/>
</acme:form>

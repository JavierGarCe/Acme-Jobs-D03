<%@page language="java"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="acme" tagdir="/WEB-INF/tags"%>

<acme:form readonly="true">
	<acme:form-textbox code="administrator.banner.commercial.form.label.picture" path="picture"/>
	<acme:form-textbox code="administrator.banner.commercial.form.label.slogan" path="slogan"/>
	<acme:form-url code="administrator.banner.commercial.form.label.targetUrl" path="targetUrl"/>
	<acme:form-textbox code="administrator.banner.commercial.form.label.creditCard" path="creditCard"/>
  	<acme:form-return code="administrator.banner.commercial.form.button.return"/>
</acme:form>
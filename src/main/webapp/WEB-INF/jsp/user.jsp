<%@ page language="java" contentType="text/html; charset=windows-1256"
	pageEncoding="windows-1256"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1256">
<title>Insert title here</title>
</head>
<body>
	<%@include file="header.jsp"%>
	<form:form commandName="user">
		<form:errors path="*" />
		<br />
		<br />
		<br />

		<spring:message code="user.firstName" />
		<form:input path="firstName" />
		<form:errors path="firstName" />
		<br>

		<spring:message code="user.lastName" />
		<form:input path="lastName" />
		<form:errors path="lastName" />
		<br>

		<spring:message code="user.address1" />
		<form:input path="address1" />
		<form:errors path="address1" />
		<br>

		<spring:message code="user.address2" />
		<form:input path="address2" />
		<form:errors path="address2" />
		<br>

		<spring:message code="user.city" />
		<form:input path="city" />
		<form:errors path="city" />
		<br>

		<spring:message code="user.state" />
		<form:select id="state" path="state">
			<form:option value="">Select a state</form:option>
			<form:option value="AL">Alabama</form:option>
			<form:option value="AK">Alaska</form:option>
			<form:option value="AZ">Arizona</form:option>
			<form:option value="AR">Arkansas</form:option>
			<form:option value="CA">California</form:option>
			<form:option value="CO">Colorado</form:option>
			<form:option value="CT">Connecticut</form:option>
			<form:option value="DE">Delaware</form:option>
			<form:option value="DC">District of Columbia</form:option>
			<form:option value="FL">Florida</form:option>
			<form:option value="GA">Georgia</form:option>
			<form:option value="HI">Hawaii</form:option>
			<form:option value="ID">Idaho</form:option>
			<form:option value="IL">Illinois</form:option>
			<form:option value="IN">Indiana</form:option>
			<form:option value="IA">Iowa</form:option>
			<form:option value="KS">Kansas</form:option>
			<form:option value="KY">Kentucky</form:option>
			<form:option value="LA">Louisiana</form:option>
			<form:option value="ME">Maine</form:option>
			<form:option value="MD">Maryland</form:option>
			<form:option value="MA">Massachusetts</form:option>
			<form:option value="MI">Michigan</form:option>
			<form:option value="MN">Minnesota</form:option>
			<form:option value="MS">Mississippi</form:option>
			<form:option value="MO">Missouri</form:option>
			<form:option value="MT">Montana</form:option>
			<form:option value="NE">Nebraska</form:option>
			<form:option value="NV">Nevada</form:option>
			<form:option value="NH">New Hampshire</form:option>
			<form:option value="NJ">New Jersey</form:option>
			<form:option value="NM">New Mexico</form:option>
			<form:option value="NY">New York</form:option>
			<form:option value="NC">North Carolina</form:option>
			<form:option value="ND">North Dakota</form:option>
			<form:option value="OH">Ohio</form:option>
			<form:option value="OK">Oklahoma</form:option>
			<form:option value="OR">Oregon</form:option>
			<form:option value="PA">Pennsylvania</form:option>
			<form:option value="RI">Rhode Island</form:option>
			<form:option value="SC">South Carolina</form:option>
			<form:option value="SD">South Dakota</form:option>
			<form:option value="TN">Tennessee</form:option>
			<form:option value="TX">Texas</form:option>
			<form:option value="UT">Utah</form:option>
			<form:option value="VT">Vermont</form:option>
			<form:option value="VA">Virginia</form:option>
			<form:option value="WA">Washington</form:option>
			<form:option value="WV">West Virginia </form:option>
			<form:option value="WI">Wisconsin</form:option>
			<form:option value="WY">Wyoming</form:option>
		</form:select>
		<form:errors path="state" />
		<br>

		<spring:message code="user.zip" />
		<form:input path="zip" />
		<form:errors path="zip" />
		<br>

		<spring:message code="user.country" />
		<form:input path="country" />
		<form:errors path="country" />
		<br>

		<input type="submit" />
	</form:form>
</body>
</html>
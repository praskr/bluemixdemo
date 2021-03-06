<!DOCTYPE html> 

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="petclinic" tagdir="/WEB-INF/tags" %>


<html lang="en">

<jsp:include page="../fragments/staticFiles.jsp"/>

<body>
<div class="container">
    <jsp:include page="../fragments/bodyHeader.jsp"/>
    <c:choose>
        <c:when test="${owner['new']}"><c:set var="method" value="post"/></c:when>
        <c:otherwise><c:set var="method" value="put"/></c:otherwise>
    </c:choose>

    <h2>
        <c:if test="${owner['new']}">New </c:if> Parcel
    </h2>
    <form:form modelAttribute="owner" method="${method}" class="form-horizontal" id="add-owner-form">
<%--         <petclinic:inputField label="First Name" name="firstName"/> --%>
<%--         <petclinic:inputField label="Last Name" name="lastName"/> --%>
<%--         <petclinic:inputField label="Address" name="address"/> --%>
<%--         <petclinic:inputField label="City" name="city"/> --%>
<%--         <petclinic:inputField label="Telephone" name="telephone"/> --%>
		<label>First Name</label>
		<input type="text" name="firstName" value="${owner.firstName}"/>
		<label>Last Name</label>
		<input type="text" name="lastName" value="${owner.lastName}"/>
		<label>Address</label>
		<input type="text" name="address" value="${owner.address}"/>
		<label>City</label>
		<input type="text" name="city" value="${owner.city}"/>
		<label>Telephone</label>
		<input type="text" name="telephone" value="${owner.telephone}"/>

        <div class="form-actions">
            <c:choose>
                <c:when test="${owner['new']}">
                    <button type="submit">Add Parcel</button>
                </c:when>
                <c:otherwise>
                    <button type="submit">Update Parcel</button>
                </c:otherwise>
            </c:choose>
        </div>
    </form:form>
</div>
<jsp:include page="../fragments/footer.jsp"/>
</body>

</html>

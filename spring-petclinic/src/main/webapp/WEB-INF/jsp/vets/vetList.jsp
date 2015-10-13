<!DOCTYPE html> 

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="datatables" uri="http://github.com/dandelion/datatables" %>

<html lang="en">
<head>
<script type="text/javascript" charset="utf8" src="/resources/script/jquery-1.8.2.min.js"></script>
  <script type="text/javascript" charset="utf8" src="/resources/script/jquery.dataTables.min.js"></script>

<script>
$(document).ready(function() {
    $('#vets').DataTable( {
        "processing": true,
        "serverSide": true,
        "ajax": {
            "url": "vets.json",
            "type": "GET"
        },
        "columns": [
            { "data": "name1" },
            { "data": "specialties" }          
        ]
    } );
} );
</script>
</head>
<jsp:include page="../fragments/staticFiles.jsp"/>

<body>
<div class="container">
    <jsp:include page="../fragments/bodyHeader.jsp"/>

    <h2>Veterinarians</h2>

<table id="vets" name="vets" cssClass="table table-striped">
<thead>
<th>Name1</th>
<th>Specialties</th>
</thead>
<%

%>
</table>
<%--     <datatables:table id="vets" data="${vets.vetList}" row="vet" theme="bootstrap2" cssClass="table table-striped" pageable="false" info="false"> --%>
<%--         <datatables:column title="Name"> --%>
<%--             <c:out value="${vet.firstName} ${vet.lastName}"></c:out> --%>
<%--         </datatables:column> --%>
<%--         <datatables:column title="Specialties"> --%>
<%--             <c:forEach var="specialty" items="${vet.specialties}"> --%>
<%--                 <c:out value="${specialty.name}"/> --%>
<%--             </c:forEach> --%>
<%--             <c:if test="${vet.nrOfSpecialties == 0}">none</c:if> --%>
<%--         </datatables:column> --%>
<%--     </datatables:table> --%>
    
    <table class="table-buttons">
        <tr>
            <td>
                <a href="<spring:url value="/vets.xml" htmlEscape="true" />">View as XML</a>
            </td>
            <td>
                <a href="<spring:url value="/vets.json" htmlEscape="true" />">View as JSon</a>
            </td>
        </tr>
    </table>

    <jsp:include page="../fragments/footer.jsp"/>
</div>
</body>

</html>

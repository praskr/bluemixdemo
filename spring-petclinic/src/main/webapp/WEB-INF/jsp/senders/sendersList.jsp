<!DOCTYPE html> 

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="datatables" uri="http://github.com/dandelion/datatables" %>

<html lang="en">

<jsp:include page="../fragments/staticFiles.jsp"/>

<script type="text/javascript" charset="utf8" src="/resources/script/jquery-1.8.2.min.js"></script>
  <script type="text/javascript" charset="utf8" src="/resources/script/jquery.dataTables.min.js"></script>
  <link href="https://cdn.datatables.net/1.10.9/css/jquery.dataTables.min.css" rel="stylesheet"></link>

<script>
$(document).ready(function() {
    $('#owners').DataTable( {
        "processing": true,
        "serverSide": false        
        
    } );
} );
</script>

<body>
<div class="container">
    <jsp:include page="../fragments/bodyHeader.jsp"/>
    <h2>Owners</h2>
 
<table id="owners" name="owners" class="display" cellspacing="0" width="601px;">
<thead>
			<th>Name</th>
			<th>Address</th>
			<th>City</th>
			<th>Telephone</th>
			<th>Pets</th>
			
		</thead>
    <c:forEach items="${selections}" var="owner">
		<tr>
            <td>
            <spring:url value="/owners/{ownerId}.html" var="ownerUrl"> 
			<spring:param name="ownerId" value="${owner.id}"/> 
		</spring:url>
             <a href="${fn:escapeXml(ownerUrl)}"><c:out value="${owner.firstName} ${owner.lastName}"/></a>
            
            </td>
            <td><c:out value="${owner.address}"/></td>
            <td><c:out value="${owner.city}"/></td>
            <td><c:out value="${owner.telephone}"/></td>
            <td> 
	            <c:forEach var="pet" items="${owner.pets}">
	                 <c:out value="${pet.name}"/> 
	           	</c:forEach> 
           </td>  
          
        </tr>
    </c:forEach>
</table>

<%--     <datatables:table id="owners" data="${selections}" row="owner"> --%>
<%--         <datatables:column title="Name" cssStyle="width: 150px;" display="html"> --%>
<%--             <spring:url value="/owners/{ownerId}.html" var="ownerUrl"> --%>
<%--                 <spring:param name="ownerId" value="${owner.id}"/> --%>
<%--             </spring:url> --%>
<%--             <a href="${fn:escapeXml(ownerUrl)}"><c:out value="${owner.firstName} ${owner.lastName}"/></a> --%>
<%--         </datatables:column> --%>
<%--         <datatables:column title="Name" display="pdf"> --%>
<%--             <c:out value="${owner.firstName} ${owner.lastName}"/> --%>
<%--         </datatables:column> --%>
<%--         <datatables:column title="Address" property="address" cssStyle="width: 200px;"/> --%>
<%--         <datatables:column title="City" property="city"/> --%>
<%--         <datatables:column title="Telephone" property="telephone"/> --%>
<%--         <datatables:column title="Pets" cssStyle="width: 100px;"> --%>
<%--             <c:forEach var="pet" items="${owner.pets}"> --%>
<%--                 <c:out value="${pet.name}"/> --%>
<%--             </c:forEach> --%>
<%--         </datatables:column> --%>
<%--         <datatables:export type="pdf" cssClass="btn" cssStyle="height: 25px;" /> --%>
<%--     </datatables:table> --%>
    
    <jsp:include page="../fragments/footer.jsp"/>

</div>
</body>

</html>

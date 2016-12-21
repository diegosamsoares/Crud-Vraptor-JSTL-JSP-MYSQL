
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="../css/estilo.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Lista Caloteiros</title>
</head>
<body>


	<h1>Lista Caloteiros</h1>

	<table border="1">
		<tr>
			<td>Id</td>
			<td>Email</td>
			<td>Id</td>
			<td>Nome</td>			
			<td>Devendo</td>
			<td>Data</td>
		</tr>


		<c:forEach var="caloteiro" items="${caloteiroList }">

		</c:forEach>
		<c:forEach var="caloteiro" items="${caloteiroList }" varStatus="id">
			<tr bgcolor="#${id.count %2 ==0 ? '#606060' : 'ffffff' }">
				<td >${id.count}</td>

				<c:choose>
					<c:when test="${not empty caloteiro.email }">
						<td>${caloteiro.email }</td>
					</c:when>

					<c:otherwise>
						<td>Email não preenchido</td>
					</c:otherwise>

				</c:choose>
				<td>${caloteiro.id }</td>
				<td><a href="altera/${caloteiro.id}">${caloteiro.nome }</a></td>
				<td>${caloteiro.devendo }</td>
				<td><fmt:formatDate pattern="dd/MM/yyyy"
						value="${caloteiro.dataDivida.time }" /></td>
				<td><a href="deleta/${caloteiro.id }">Deletar</a></td>
			</tr>
		</c:forEach>
	</table>



</body>
</html>
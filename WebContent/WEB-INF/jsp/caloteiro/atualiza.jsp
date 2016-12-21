<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


	<h1 id="titulo">CADASTRO DE CALOTEIROS</h1>

	<div>



		<form action="../salva" method="Post">
			<table>

				<tr>
					<td>Id<input type="text" name="caloteiro.id"
						value="${caloteiro.id }" readonly="readonly"/></td>
				</tr>


				<tr>
					<td>Nome:<input type="text" name="caloteiro.nome"
						value="${caloteiro.nome }" /></td>
				</tr>

				<tr>
					<td>Email:<input type="text" name="caloteiro.email"
						value="${caloteiro.email }" /></td>
				</tr>

				<tr>
					<td>Devendo:<input type="text" name="caloteiro.devendo"
						value="${caloteiro.devendo }" /></td>
				</tr>

				<tr>
					<td>Data:<input type="text" name="caloteiro.dataDivida"
						value="<fmt:formatDate pattern="dd/MM/yyyy" value="${caloteiro.dataDivida.time }"/>" /></td>
				</tr>

				<tr>
					<td><input id="botaosalvar" type="submit" value="Salvar" /></td>
				</tr>
			</table>
		</form>





	</div>


</body>
</html>
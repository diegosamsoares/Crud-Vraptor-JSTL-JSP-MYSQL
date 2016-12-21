<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Adiciona Caloteiro</title>
</head>
<body>



	<h1 id="titulo">CADASTRO DE CALOTEIROS</h1>

	<div>



		<form action="caloteiro/adiciona" method="Post"
			id="formAdicionaCaloteiros">
			<a href="caloteiro/lista">Lista Caloteiros</a> <input type="hidden"
				name="acao" value="AdicionaCaloteiro" />
			<table>


				<tr>
					<td>Nome:<input type="text" name="caloteiro.nome" /></td>
				</tr>

				<tr>
					<td>Email:<input type="text" name="caloteiro.email" /></td>
				</tr>

				<tr>
					<td>Devendo:<input type="text" name="caloteiro.devendo"
						id="labelDevendo" /></td>
				</tr>

				<tr>
					<td>Data:<input type="text" name="caloteiro.dataDivida" /></td>
				</tr>

				<tr>
					<td><input id="botaosalvar" type="submit" value="Salvar" /></td>
				</tr>
			</table>
		</form>





	</div>


</body>



</html>
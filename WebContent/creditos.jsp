<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:url value="/listaProdutos" var="listaProdutos" />
<c:url value="/novoProduto" var="novoProduto" />

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="ISO-8859-1">
    <title>Créditos</title>
</head>
<body>

    <h1>CBTSWE1 - TP02</h1>

    <nav>
        <ul>
            <li><a href="${listaProdutos}">Lista de produtos</a></li>
            <li><a href="${novoProduto}">Criar Produto</a></li>
            <li><a href="/produtos/creditos.jsp">Créditos</a></li>
        </ul>
    </nav>

    <h2>Trabalho desenvolvido por:</h2>

    <p>Vinicius do Nascimento Ayres (CB3025675)</p>
    <p>Milena Costa de Andrade (CB3027171)</p>

</body>
</html>
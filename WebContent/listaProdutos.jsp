<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:url value="/listaProdutos" var="listaProdutos" />
<c:url value="/novoProduto" var="novoProduto" />
<c:url value="/alteraProduto" var="linkAlteraProduto" />
<c:url value="/removeProduto" var="linkRemoverProduto" />

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="ISO-8859-1">
    <title>Lista de Produtos</title>
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

    <h2>Lista de Produtos:</h2>

    <table border="1" cellpadding="5" cellspacing="0">
        <thead>
            <tr>
                <th>Nome</th>
                <th>Descrição</th>
                <th>Unidade Compra</th>
                <th>Qtd Previsto Mês</th>
                <th>Preço Máx Comprado</th>
                <th>Ações</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${produtos}" var="produto">
                <tr>
                    <td>${produto.nome}</td>
                    <td>${produto.descricao}</td>
                    <td>${produto.unidadeCompra}</td>
                    <td>${produto.qtdPrevistoMes}</td>
                    <td>${produto.precoMaxComprado}</td>
                    <td>
                        <a href="${linkAlteraProduto}?id=${produto.id}">Editar</a> |
                        <a href="${linkRemoverProduto}?id=${produto.id}">Remover</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
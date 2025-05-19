<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:url value="/listaProdutos" var="listaProdutos" />
<c:url value="/novoProduto" var="novoProduto" />
<c:url value="/alteraProduto" var="linkServletAlterarProduto" />

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="ISO-8859-1">
    <title>Alterar produto</title>
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

    <h2>Alterar produto:</h2>

    <form action="${linkServletAlterarProduto}" method="post">
        <table border="1" cellpadding="5" cellspacing="0">
            <tr>
                <td><label for="nome">Nome:</label></td>
                <td><input type="text" id="nome" name="nome" value="${produto.nome}" required /></td>
            </tr>
            <tr>
                <td><label for="unidadeCompra">Unidade Compra:</label></td>
                <td><input type="number" id="unidadeCompra" name="unidadeCompra" value="${produto.unidadeCompra}" required /></td>
            </tr>
            <tr>
                <td><label for="descricao">Descrição:</label></td>
                <td><input type="text" id="descricao" name="descricao" value="${produto.descricao}" required /></td>
            </tr>
            <tr>
                <td><label for="qtdPrevistoMes">Qtd Previsto Mês:</label></td>
                <td><input type="number" id="qtdPrevistoMes" name="qtdPrevistoMes" value="${produto.qtdPrevistoMes}" required /></td>
            </tr>
            <tr>
                <td><label for="precoMaxComprado">Preço Máx Comprado:</label></td>
                <td><input type="number" id="precoMaxComprado" name="precoMaxComprado" value="${produto.precoMaxComprado}" step="0.01" required /></td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center;">
                    <input type="hidden" name="id" value="${produto.id}" />
                    <input type="submit" value="Alterar" />
                </td>
            </tr>
        </table>
    </form>

</body>
</html>
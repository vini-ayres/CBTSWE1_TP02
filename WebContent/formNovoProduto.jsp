<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:url value="/listaProdutos" var="listaProdutos" />
<c:url value="/novoProduto" var="novoProduto" />
<c:url value="/novoProduto" var="linkServletNovoProduto" />

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="ISO-8859-1">
    <title>Novo produto</title>
</head>
<body>

    <h1>CBTSWE1 - TP02</h1>

    <nav>
        <ul>
            <li><a href="${listaProdutos}">Lista de produtos</a></li>
            <li><a href="${novoProduto}">Criar Produto</a></li>
            <li><a href="/produtos/creditos.jsp">Cr�ditos</a></li>
        </ul>
    </nav>

    <h2>Novo produto:</h2>

    <form action="${linkServletNovoProduto}" method="post">
        <table border="1" cellpadding="5" cellspacing="0">
            <tr>
                <td><label for="nome">Nome:</label></td>
                <td><input type="text" id="nome" name="nome" required /></td>
            </tr>
            <tr>
                <td><label for="unidadeCompra">Unidade Compra:</label></td>
                <td><input type="number" id="unidadeCompra" name="unidadeCompra" required /></td>
            </tr>
            <tr>
                <td><label for="descricao">Descri��o:</label></td>
                <td><input type="text" id="descricao" name="descricao" required /></td>
            </tr>
            <tr>
                <td><label for="qtdPrevistoMes">Qtd Previsto M�s:</label></td>
                <td><input type="number" id="qtdPrevistoMes" name="qtdPrevistoMes" required /></td>
            </tr>
            <tr>
                <td><label for="precoMaxComprado">Pre�o M�x Comprado:</label></td>
                <td><input type="number" id="precoMaxComprado" name="precoMaxComprado" step="0.01" required /></td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center;">
                    <input type="submit" value="Criar" />
                </td>
            </tr>
        </table>
    </form>

</body>
</html>
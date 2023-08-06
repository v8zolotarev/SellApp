<!DOCTYPE html>
<html>
<head>
    <title>SellApp</title>
</head>
<body>
<h1>SellApp</h1><hr>
<h4>Информация о пользователе ${user.name}</h4>
<b>Номер телефона: </b> ${user.phoneNumber}<br>
<b>Email: </b> ${user.email}<br>
<h4>Товары пользователя ${user.name}</h4>
<#list products as product>
    <div>
        <p><b>${product.title}</b> ${product.price} руб. | <a href="/product/${product.id}">Подробнее...</a></p>
    </div>
<#else>
    <h3>Товаров нет</h3>
</#list>
<#if errorMessage??>
    <h2 style="color: red">${errorMessage}</h2>
</#if>
</body>
</html>
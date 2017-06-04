<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0"/>
    <title>Test GIS</title>

    <!-- CSS  -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="../../resources/css/materialize.min.css" type="text/css" rel="stylesheet" media="screen,projection"/>
    <link href="../../resources/css/style.css" type="text/css" rel="stylesheet" media="screen,projection"/>
</head>
<body>
<nav class="cyan darken-2" role="navigation">
    <div class="nav-wrapper container"><a id="logo-container" class="brand-logo"></a>
        <ul class="right hide-on-med-and-down">
            <li><a href="#"></a></li>
        </ul>

        <ul id="nav-mobile" class="side-nav">
            <li><a href="#"></a></li>
        </ul>
        <a href="#" data-activates="nav-mobile" class="button-collapse"><i class="material-icons">menu</i></a>
    </div>
</nav>

<div class="container">
    <br>
    <br>
    <div class="row">
        <c:if test="${response.error > 0}">
            <div>Пройзошла ошибка</div>
        </c:if>
        <c:if test="${response.error == 0}">
            <div class="col s4"></div>
            <div class="col s4 ">
                <div class="row center">
                    <h5 > Ваш заказ успешно зарегистрирован</h5><br>
                    <h6>Заказ № ${response.id}</h6>
                    <br>

                    <table>
                    <tr>
                        <td>Наименование товара</td>
                        <td>${nameProduct}</td>
                    </tr>
                    <tr>
                        <td>Цена за шт</td>
                        <td>${priceProduct}</td>
                    </tr>
                    <tr>
                        <td>Количество товара</td>
                        <td>${amountProduct}</td>
                    </tr>
                    <tr>
                        <td>Сумма к оплате</td>
                        <td>${totalPrice}</td>
                    </tr>
                    </table>

                </div>
            </div>
            <div class="col s4"></div>
        </c:if>
    </div>
</div>


<!--  Scripts-->
<script src="../../resources/js/libraries/jquery-1.11.3.min.js"></script>
<script src="../../resources/js/libraries/materialize.min.js"></script>

</body>
</html>

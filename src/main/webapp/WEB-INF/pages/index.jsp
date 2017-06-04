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
        <div class="col s4"></div>
        <div class="col s4 ">
            <div class="row products">
                <div class="col s12">
                    <h5>Ввод данных для заказа</h5>
                </div>
                <br><br><br><br>
                <form method="post" action="${pageContext.request.contextPath}/createOrder">
                    <div class="input-field col s12">
                        <input id="nameProduct" name="nameProduct" type="text" maxlength="50" class="validate"
                               placeholder=" Наименование товара" required>
                        <label for="nameProduct">Наименование товара</label>
                    </div>
                    <div class="input-field col s12">
                        <input id="priceProduct" name="priceProduct" type="number" step="0.01" min="0" class="validate"
                               placeholder="Цена за шт" required>
                        <label for="priceProduct">Цена за шт</label>
                    </div>
                    <div class="input-field col s12">
                        <input id="amountProduct" name="amountProduct" type="number" step="1" min="0" class="validate"
                               placeholder="Количество товара" required>
                        <label for="amountProduct">Количество товара</label>
                    </div>
                    <div class="input-field col s12">
                        <input id="totalPrice" name="totalPrice" type="number" step="0.01" min="0" class="validate"
                               placeholder="Сумма к оплате" required>
                        <label for="totalPrice">Сумма к оплате</label>
                    </div>
                    <div class="col s6">
                        <input type="submit" class="btn" value="Создать заказ">
                    </div>
                </form>
            </div>
        </div>
        <div class="col s4"></div>

    </div>
</div>


<!--  Scripts-->
<script src="../../resources/js/libraries/jquery-1.11.3.min.js"></script>
<script src="../../resources/js/libraries/materialize.min.js"></script>
<script>
    $('#amountProduct').on('change', function () {
        var amountProduct = $('#amountProduct').val();
        var priceProduct = $('#priceProduct').val();
        $('#totalPrice').val(priceProduct * amountProduct);
    });
</script>

</body>
</html>

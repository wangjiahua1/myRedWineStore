<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Register</title>
    <meta name="description" content="Login - Register Template">
    <meta name="author" content="Lorenzo Angelino aka MrLolok">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="js/jquery-1.12.4.min.js"></script>
    <script src="js/register.js"></script>
    <link rel="stylesheet" href="css/main1.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <style>
        body {
            background-color: #303641;
        }
    </style>
</head>

<body>
    <div id="container-register">
        <div id="title">
            <i class="material-icons lock">lock</i> Register
        </div>

        <form action="${pageContext.request.contextPath}/userb?method=register" method="post">
            <div class="input">
                <div class="input-addon">
                    <i class="material-icons">email</i>
                </div>
                <input id="email" placeholder="Email" name="email" type="email" required class="validate" autocomplete="off">
            </div>

            <div class="clearfix"></div>

            <div class="input">
                <div class="input-addon">
                    <i class="material-icons">face</i>
                </div>
                <input id="code"  name="code" placeholder="code" type="text" required class="validate" autocomplete="off">
            </div>

            <div class="clearfix"></div>

            <div class="input">
                <div class="input-addon">
                    <i class="material-icons">vpn_key</i>
                </div>
                <input id="password"  name="password" placeholder="Password" type="password" required class="validate" autocomplete="off">
            </div>
            <p></p>
            <p></p>
            <input type="submit" value="Register" />
        </form>
        <div class="register">
            Do you already have an account?
            <a href="javascript:void(0)"><button id="register-link">GetCode</button></a>
        </div>
    </div>
</body>

</html>

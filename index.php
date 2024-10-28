<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MVC</title>
</head>

<body>
    <header>
        <nav>
            <li>
                <a href="http://localhost/dwd-proyecto/index.php?page=home">HOME</a>
            </li>
            <li>
                <a href="http://localhost/dwd-proyecto/index.php?page=login">LOGIN</a>
            </li>
            <li>
                <a href="http://localhost/dwd-proyecto/index.php?page=registro">REGISTRARCE</a>
            </li>
        </nav>
    </header>

    <?php

    require_once "./core/router.php";

    $pages = [
        'home' => [1, 2, 3],
        'login' => [],
        'registro' => []
    ];


    $controllers = [
        'usuario' => [],
    ];

    routingPages(pages: $pages);

    routingControllers($controllers);



    ?>


</body>

</html>
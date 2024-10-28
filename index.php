<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MVC</title>
</head>

<body>
    <?php require_once "./core/configApp.php" ?>
    <header>
        <nav>
            <li>
                <a href=<?= APP_URL . "index.php?page=home" ?>>HOME</a>
            </li>
            <li>
                <a href=<?= APP_URL . "index.php?page=login" ?>>LOGIN</a>
            </li>
            <li>
                <a href=<?= APP_URL . "index.php?page=registro" ?>>REGISTRARCE</a>
            </li>
        </nav>
    </header>

    <?php
    require_once "./core/router.php";

    $pages = [
        'home' => [],
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
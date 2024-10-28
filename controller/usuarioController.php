<?php

require_once "./core/conexionDB.php";

$conexionDB = openDbConnect();


function Ingresar()
{
    var_dump($_POST);
}


if (!empty($action)) {
    ucfirst($action)();
}

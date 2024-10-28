<?php

function routingPages(array $pages)
{
    if (isset($_GET['page'])) {
        foreach ($pages as $page => $params) {
            if ($_GET['page'] == $page) {
                require_once "./view/$page" . "View.php";
                exit;
            }
        }
        require_once "./view/notFoundView.php";
        exit;
    }
    if (!isset($_GET['page']) && !isset($_GET['controller'])) {
        $params = $pages['home'];
        require_once "./view/homeView.php";
        exit;
    }
}


function routingControllers(array $controllers)
{
    if (isset($_GET['controller'])) {
        if (isset($_GET['action'])) {
            foreach ($controllers as $controller => $params) {
                if ($_GET['controller'] == $controller) {
                    $action = $_GET['action'];
                    require_once "./controller/$controller" . "Controller.php";
                    exit;
                }
            }
        }
        require_once "./view/notFoundView.php";
        exit;
    }
}

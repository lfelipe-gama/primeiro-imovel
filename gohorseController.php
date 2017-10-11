<?php
session_start();
/**
 * Created by PhpStorm.
 * User: Felipe
 * Date: 09/10/2017
 * Time: 16:24
 *
 *
 * GO HORSE SCRIPT MVP
 *
 */

include_once ("mysql_crud.php");

$db = new Database();
$db->connect();


if (isset($_SESSION['step'])) {
    $_SESSION['step']++;
} else {
    $_SESSION['step'] = 1;
}

if (isset($_POST)) {
    $_SESSION = array_merge($_SESSION, $_POST);

    if ($_SESSION['step'] > 12) {

        $_SESSION['interesse'] = implode(",",$_SESSION['interesse']);

        unset($_SESSION['step']);

        $db->insert('leads',$_SESSION);
        $res = $db->getResult();

        session_destroy();

        //var_dump($res);
        header('Location: obrigado.html');
        exit();
    }

        header('Location: step' . $_SESSION['step'] . '.html');

}
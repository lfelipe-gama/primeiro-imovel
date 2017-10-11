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

/*
 *
 *
 */

// controle de paginas v1.1
$pg = preg_replace("/[^0-9]/", "", $_SERVER['HTTP_REFERER']);
$pg++;

if (isset($_POST)) {
    $_SESSION = array_merge($_SESSION, $_POST);

    if ($pg > 12) {

        $_SESSION['interesse'] = implode(",",$_SESSION['interesse']);

        unset($_SESSION['step']);

        $db->insert('leads',$_SESSION);
        $res = $db->getResult();

        session_destroy();

        //var_dump($res);
        header('Location: obrigado.html');
        exit();
    }

        header('Location: step' .$pg. '.html');

}
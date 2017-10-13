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

// controle de paginas v1.1
$pg = preg_replace("/[^0-9]/", "", $_SERVER['HTTP_REFERER']);
$pg++;

if (isset($_POST)) {
    $_SESSION = array_merge($_SESSION, $_POST);

    if ($pg > 12) {

        $_SESSION['interesse'] = implode(",",$_SESSION['interesse']);

        $db->insert('leads',$_SESSION);
        $res = $db->getResult();

        session_destroy();

        //var_dump($res);

    include "PHPMailer-master/PHPMailerAutoload.php";


    $mail = new PHPMailer();

    $mail->IsSMTP();
    $mail->Host = "smtp.umbler.com";
    $mail->Port = 587;

    $mail->SMTPAuth = true;
    $mail->Username = 'marcus@primeiro-imovel.com';
    $mail->Password = 'cuzao123';

// Configurações de compatibilidade para autenticação em TLS
    $mail->SMTPOptions = array(
        'ssl' => array(
            'verify_peer' => false,
            'verify_peer_name' => true,
            'allow_self_signed' => true,
        )
    );

    $mail->SMTPDebug = 2; // Você pode habilitar esta opção caso tenha problemas. Assim pode identificar mensagens de erro.

    $mail->From = "marcus@primeiro-imovel.com"; // Seu e-mail
    $mail->FromName = "Marcus Lemos"; // Seu nome

// Define o(s) destinatário(s)
    $mail->AddAddress( $_SESSION['email'], $_SESSION['nome']);

// BCC - Cópia oculta
    $mail->AddBCC('lipe.smo@gmail.com', 'Felipe');

// Definir se o e-mail é em formato HTML ou texto plano
    $mail->IsHTML(true); // Formato HTML . Use "false" para enviar em formato texto simples.

    $mail->CharSet = 'UTF-8'; // Charset (opcional)

// Assunto da mensagem
    $mail->Subject = "[Primeiro Imóvel] Seu primeiro imóvel, nosso primeiro passo!";

// Corpo do email
    $mail->Body = '<b>SOLICITAÇÃO DE ORÇAMENTO VIA SITE</b>
                    <br><br>
                    <b>Nome: </b>';

// Envia o e-mail
    $enviado = $mail->Send();

// Exibe uma mensagem de resultado
    if ($enviado) {
        $retorno = array('codigo' => 1, 'mensagem' => '<br>Em breve entraremos em contato!');
        echo $retorno;
        exit();
    } else {
        $retorno = array('codigo' => 0, 'mensagem' => $mail->ErrorInfo);
        echo $retorno;
        exit();
    }


        //header('Location: obrigado.html');
        exit();
    }

        header('Location: step' .$pg. '.html');

}
<?php
//Import PHPMailer classes into the global namespace
//These must be at the top of your script, not inside a function
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
require '/srv/http/PHPMailer/src/Exception.php';
require '/srv/http/PHPMailer/src/PHPMailer.php';
require '/srv/http/PHPMailer/src/SMTP.php';
//Create an instance; passing `true` enables exceptions
$mail = new PHPMailer(true);
try {
//Server settings
$mail->SMTPDebug = true; //Enable verbose debug output
$mail->isSMTP(); //Send using SMTP
$mail->Host = 'poczta.interia.pl'; //Set the SMTP server to send through
$mail->SMTPAuth = true; //Enable SMTP authentication
$mail->Username = 'no.reply@porn.hub.pl'; //SMTP username
$mail->Password = '7Ja44gMeiPwhrCi'; //SMTP password
$mail->SMTPSecure = PHPMailer::ENCRYPTtION_SMTPS; //Enable implicit TLS encryption
$mail->Port = 465; //TCP port to connect to; use 587 if you have set `SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS`
 //Recipients
// $mail->setFrom('no.reply@porn.hub.pl', 'Mailer');
$mail->addAddress('julianryba@interia.pl', 'Interia User'); //Add a recipient
$mail->addAddress('julorybarczyk@gmail.com', 'Gmail User'); //Name is optional
$mail->addAddress('julianryba@wp.pl', 'WP User'); //Name is optional
$mail->addAddress('julianryba@onet.pl', 'Onet User'); //Name is optional
 //Content$mail->isHTML(true); //Set email format to HTML
$mail->Subject = 'Here is the subject';
$mail->Body = 'This is the HTML message body <b>in bold!</b>';
$mail->AltBody = 'This is the body in plain text for non-HTML mail clients';
 $mail->send();
echo 'Message has been sent';
} catch (Exception $e) {
echo "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
}
?> 
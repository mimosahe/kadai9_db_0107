<?php
session_start();

$_SESSION['name'] = 'hemmi';
$_SESSION['age'] = 27;

$sid = session_id();
echo $sid;
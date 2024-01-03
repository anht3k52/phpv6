<?php
require_once("../../config/config.php");
require_once("../../config/function.php");


session_destroy();
header("location:".BASE_URL('Auth/Login'));
exit();
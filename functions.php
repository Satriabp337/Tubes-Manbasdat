<?php
function encryptPassword($password) {
    return password_hash($password, PASSWORD_BCRYPT);
}
?>
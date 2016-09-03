/**
 * Created by systems on 03-09-2016.
 */
var password = document.getElementById("user_password")
    , confirm_password = document.getElementById("user_confirm_password");

function validatePassword(){
    if(password.value != confirm_password.value) {
        confirm_password.setCustomValidity("Passwords Don't Match");
    } else {
        confirm_password.setCustomValidity('');
    }
}

password.onchange = validatePassword;
confirm_password.onkeyup = validatePassword;
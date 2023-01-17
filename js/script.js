function signUpValidate(){
    var fullName = document.getElementById('fullName');
    var email = document.getElementById('email');
    var userName = document.getElementById('userName');
    var signPassword = document.getElementById('signPassword');
    var confirmPassword = document.getElementById('confirmPassword');
    var validatedname = nameValidate(fullName);
    var validatemail = mailValidate(email);
    var validatuserName = userNameValidate(userName);
    var validatpassword = passwordValidate(signPassword);
    var validatpasswordComfirm = passwordComfirmValidate(confirmPassword,signPassword);

    if(validatedname && validatemail && validatuserName && validatpassword && validatpasswordComfirm)
		return true;
    else 
		return false;
}
function error(id){
    document.getElementById(id).style.display="block";
    }
    
    function success(id){
    document.getElementById(id).innerHTML="";
}

function nameValidate(fullName){ 

    if(fullName.value==""){
      error('nameError');
      return false;
    }else{
       success('nameError');
       
       return true;
    }
}
function mailValidate(email){
    if(email.value==""){
        email.classList.add("error");
        error('emailError');
        return false;
    }else{
        success('emailError');
        return true;
    }
}
function userNameValidate(userName){
    if(userName.value==""){
        error('userError');
        return false;
    }else{
        success('userError');
        return true;
    }
}
function passwordValidate(signPassword){
    if(signPassword.value == "" || signPassword.length<=4){
        signPassword.classList.add("error");
        error('passwordError');
        return false;
    }else{
        success('passwordError');
        signPassword.classList.remove("error");
        return true;
    }
}
function passwordComfirmValidate(confirmPassword){
    if(confirmPassword.value ==""){
        error('confirmError');
        return false;
    }else if(confirmPassword.value==signPassword.value){
        success('confirmError');
        return true;
    }else{
        error('confirmError');
        return false;
    }
}





function loginValidate(){
    var userID = document.getElementById('loginUserId');
    var password = document.getElementById('loginPassword');
    var validatpassword = passwordValidate(password);
    var validatuser = UserdValidate(userID);

    if(validatpassword && validatuser)
		return true;
    else 
		return false;
}
function error(id){
    document.getElementById(id).style.display="block";
    }
    
    function success(id){
    document.getElementById(id).innerHTML="";
}
function UserdValidate(userID){
    if(userID.value==""){
        error('userError');
        return false;
    }else{
        success('userError');
        return true;
    }
}
function passwordValidate(loginPassword){
    if(loginPassword.value<=5){
        error('passwordError');
        return false;
    }else{
        success('passwordError');
        return true;
    }
}
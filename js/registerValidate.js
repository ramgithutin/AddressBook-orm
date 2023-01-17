function vadidateCreate(){
    var optionId = document.getElementById('optionId');
    var fName = document.getElementById('fName');
    var lName = document.getElementById('lName');
    var gender = document.getElementById('gender');
    var Dob = document.getElementById('Dob');
    var fileUpload = document.getElementById('fileUpload');
    var address = document.getElementById('address');
    var street = document.getElementById('street');
    var email = document.getElementById('email');
    var phone = document.getElementById('phone');
	var len=phone.value
	console.log(len.length);
	var validatedoptionId = optionIdValidate(optionId);
	var validatedfname = fnameValidate(fName);
	var validatedlname = lnameValidate(lName);
	var validatedgender = genderValidate(gender);
	var validatedDob = DobValidate(Dob);
	var validatedfileUpload = fileUploadValidate(fileUpload);
	var validatedaddress = addressValidate(address);
	var validatedstreet = streetValidate(street);
	var validatedemail = emailValidate(email);
	var validatedphone = phoneValidate(phone,len);
	if(validatedoptionId && validatedfname && validatedlname && validatedgender && validatedDob && validatedfileUpload && validatedaddress && validatedstreet && validatedemail && validatedphone)
	return true;
	else 
	return false;
}

function optionIdValidate(optionId){
    if(optionId.value==""){
        optionId.classList.add("error");
        return false;
    }else{
		optionId.classList.remove("error");
        return true;
    }
}
function fnameValidate(fName){
    if(fName.value==""){
        fName.classList.add("error");
        return false;
    }else{
		fName.classList.remove("error");
        return true;
    }
}
function lnameValidate(lName){
    if(lName.value==""){
        lName.classList.add("error");
        return false;
    }else{
		lName.classList.remove("error");
        return true;
    }
}
function genderValidate(gender){
    if(gender.value==""){
        gender.classList.add("error");
        return false;
    }else{
		gender.classList.remove("error");
        return true;
    }
}
function DobValidate(Dob){
    if(Dob.value==""){
        Dob.classList.add("error");
        return false;
    }else{
		Dob.classList.remove("error");
        return true;
    }
}
function fileUploadValidate(fileUpload){
    if(fileUpload.value==""){
        fileUpload.classList.add("error");
        return false;
    }else{
		fileUpload.classList.remove("error");
        return true;
    }
}
function addressValidate(address){
    if(address.value==""){
        address.classList.add("error");
        return false;
    }else{
		address.classList.remove("error");
        return true;
    }
}
function streetValidate(street){
    if(street.value==""){
        street.classList.add("error");
        return false;
    }else{
		street.classList.remove("error");
        return true;
    }
}
function emailValidate(email){
    if(email.value==""){
        email.classList.add("error");
        return false;
    }else{
		email.classList.remove("error");
        return true;
    }
}
function phoneValidate(phone,len){
	if(phone.value==""){
		phone.classList.add("error");
        return false;
	}else if(len.length =='10'){
		phone.classList.remove("error");
		return true;
    }else{
		phone.classList.add("error");
		return false;
    }
}
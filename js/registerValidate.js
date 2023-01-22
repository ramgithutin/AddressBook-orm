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
	var validatedoptionId = optionIdValidate(optionId);
	var validatedfname = fnameValidate(fName);
	var validatedlname = lnameValidate(lName);
	var validatedgender = genderValidate(gender);
	var validatedDob = DobValidate(Dob);
	var validatedfileUpload = fileUploadValidate(fileUpload);
	var validatedaddress = addressValidate(address);
	var validatedstreet = streetValidate(street);
	var validatedemail = emailValidate(email);
	var validatedphone = phoneValidate(phone);
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
    var addressformate = /^[A-Za-z]+$/;
    if(address.value.match(addressformate)){
        address.classList.remove("error");
        return true;
    }else{
        address.classList.add("error");
        return false;
    }
}
function streetValidate(street){
    var streetformate = /^[A-Za-z]+$/;
    if(street.value.match(streetformate)){
        street.classList.remove("error");
        return true;
    }else{
        street.classList.add("error");
        return false;
    }
}
function emailValidate(email){
    var mailformat = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
    if(email.value.match(mailformat)){
        email.classList.remove("error");
        return true;
    }else{
        email.classList.add("error");
        return false;
    }
}
function phoneValidate(phone){
    var phoneformat = /^\d{10}$/; 
    if(phone.value.match(phoneformat)){
		phone.classList.remove("error");
        return true;
    }else{
        phone.classList.add("error");
        return false;
    }
}

function previewFile() {
    const preview = document.querySelector('#preview');
    const file = document.querySelector('input[type=file]').files[0];
    const reader = new FileReader();
  
    reader.addEventListener("load", () => {
      // convert image file to base64 string
      preview.src = reader.result;
    }, false);
    if (file) {
      reader.readAsDataURL(file);
    }
  }
function vadidateedit(){
    var editOptionId = document.getElementById('editOptionId');
    var fName = document.getElementById('editFName');
    var lName = document.getElementById('editLName');
    var gender = document.getElementById('editGender');
    var Dob = document.getElementById('editDate');
    var address = document.getElementById('editAddress');
    var street = document.getElementById('editStreet');
    var email = document.getElementById('editemail');
    var phone = document.getElementById('editPhone');
	var validatedoptionId = optionIdValidate(editOptionId);
	var validatedfname = fnameValidate(fName);
	var validatedlname = lnameValidate(lName);
	var validatedgender = genderValidate(gender);
	var validatedDob = DobValidate(Dob);
	var validatedaddress = addressValidate(address);
	var validatedstreet = streetValidate(street);
	var validatedemail = emailValidate(email);
	var validatedphone = phoneValidate(phone);
	if(validatedoptionId && validatedfname && validatedlname && validatedgender && validatedDob && validatedaddress && validatedstreet && validatedemail && validatedphone)
	    return true;
	else 
	    return false;
}

function optionIdValidate(editOptionId){
    if(optionId.value==""){
        editOptionId.classList.add("error");
        return false;
    }else{
		editOptionId.classList.remove("error");
        return true;
    }
}
function fnameValidate(fName){
    if(fName.value==""){
        editFName.classList.add("error");
        return false;
    }else{
		editFName.classList.remove("error");
        return true;
    }
}
function lnameValidate(lName){
    if(lName.value==""){
        editLName.classList.add("error");
        return false;
    }else{
		editLName.classList.remove("error");
        return true;
    }
}
function genderValidate(gender){
    if(gender.value==""){
        editGender.classList.add("error");
        return false;
    }else{
		editGender.classList.remove("error");
        return true;
    }
}
function DobValidate(Dob){
    if(Dob.value==""){
        editDate.classList.add("error");
        return false;
    }else{
		editDate.classList.remove("error");
        return true;
    }
}
function addressValidate(address){
    var addressformate = /^[A-Za-z]+$/;
    if(address.value.match(addressformate)){
        editAddress.classList.remove("error");
        return true;
    }else{
        editAddress.classList.add("error");
        return false;
    }
}
function streetValidate(street){
    var streetformate = /^[A-Za-z]+$/;
    if(street.value.match(streetformate)){
        editStreet.classList.remove("error");
        return true;
    }else{
        editStreet.classList.add("error");
        return false;
    }
}
function emailValidate(email){
    var mailformat = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
    if(email.value.match(mailformat)){
        editemail.classList.remove("error");
        return true;
    }else{
        editemail.classList.add("error");
        return false;
    }
}
function phoneValidate(phone){
    var phoneformat = /^\d{10}$/; 
    if(phone.value.match(phoneformat)){
		editPhone.classList.remove("error");
        return true;
    }else{
        editPhone.classList.add("error");
        return false;
    }
}

function previewFile2(){
    console.log("swdw");
    const preview = document.querySelector('#imageprofile');
    const file = document.querySelector('#editFile').files[0];
    const reader = new FileReader();
  
    reader.addEventListener("load", () => {
      // convert image file to base64 string
      preview.src = reader.result;
    }, false);
    if (file) {
      reader.readAsDataURL(file);
    }
}

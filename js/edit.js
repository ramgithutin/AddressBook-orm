function vadidateedit(){
    var optionId = document.getElementById('editOptionId');
    var fName = document.getElementById('editFName');
    var lName = document.getElementById('editLName');
    var gender = document.getElementById('editGender');
    var Dob = document.getElementById('editDate');
    var address = document.getElementById('editAddress');
    var street = document.getElementById('editStreet');
    var email = document.getElementById('editemail');
    var phone = document.getElementById('editPhone');
	var len=phone.value
	console.log(len.length);
	var validatedoptionId = optionIdValidate(optionId);
	var validatedfname = fnameValidate(fName);
	var validatedlname = lnameValidate(lName);
	var validatedgender = genderValidate(gender);
	var validatedDob = DobValidate(Dob);
	var validatedaddress = addressValidate(address);
	var validatedstreet = streetValidate(street);
	var validatedemail = emailValidate(email);
	var validatedphone = phoneValidate(phone,len);
	if(validatedoptionId && validatedfname && validatedlname && validatedgender && validatedDob && validatedaddress && validatedstreet && validatedemail && validatedphone)
	return true;
	else 
	return false;
}

function optionIdValidate(optionId){
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
    if(address.value==""){
        editAddress.classList.add("error");
        return false;
    }else{
		editAddress.classList.remove("error");
        return true;
    }
}
function streetValidate(street){
    if(street.value==""){
        editStreet.classList.add("error");
        return false;
    }else{
		editStreet.classList.remove("error");
        return true;
    }
}
function emailValidate(email){
    if(email.value==""){
        editemail.classList.add("error");
        return false;
    }else{
		editemail.classList.remove("error");
        return true;
    }
}
function phoneValidate(phone,len){
	if(phone.value==""){
		editPhone.classList.add("error");
        return false;
	}else if(len.length =='10'){
		editPhone.classList.remove("error");
		return true;
    }else{
		editPhone.classList.add("error");
		return false;
    }
}
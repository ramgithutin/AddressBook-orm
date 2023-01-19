function postvalue(personId){
    $.ajax({
        url:'components/getvalue.cfc?method=view',
        type:'post',
        data:{
            method:"view",
            personId:personId,
            dataType:"json"
        },
        success:function(data){
            let object=JSON.parse(data); 
            $('#nameview').html(object.FIRST_NAME+" "+object.LAST_NAME);
            $('#genderView').html(object.GENDER);
            $('#dobView').html(object.DOB);
            $('#addressView').html(object.ADDRESS);
            $('#emailView').html(object.EMAIL);
            $('#phoneView').html(object.PHONE_NO);
            let divLocation = document.getElementById("imageDiv");
            let imgElement = document.createElement("img");
            imgElement.src = "assets/contactImg/"+object.IMAGENAME;
            imgElement.className="bookImg";
            divLocation.append(imgElement);
        }
    }) 
}
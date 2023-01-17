function getvalue(personId){
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
            console.log(data) 
            $('#personId').val(personId);
            $('#editOptionId').val(object.TITLE);
            $('#editFName').val(object.FIRST_NAME);
            $('#editLName').val(object.LAST_NAME);
            $('#editGender').val(object.GENDER);
            $('#editDate').val(object.DOB);
            $('#editAddress').val(object.ADDRESS);
            $('#editStreet').val(object.STREET);
            $('#editemail').val(object.EMAIL);
            $('#editPhone').val(object.PHONE_NO);

        }
    }) 
}
function update(){
    console.log($('#personId').val())  
    $.ajax({
        url:'components/getvalue.cfc?method=updateData',
        type:'post',
        data:{
            method:"updateData",
            personId:$('#personId').val(),
            optionID:$('#editOptionId').val(),
            fName:$('#editFName').val(),
            lName:$('#editLName').val(),
            gender:$('#editGender').val(),
            date:$('#editDate').val(),
            address:$('#editAddress').val(),
            street:$('#editStreet').val(),
            email:$('#editemail').val(),
            phone:$('#editPhone').val(),
        },        
        success: function(){
        alert("Successfully updated");
        }
            }) 
}
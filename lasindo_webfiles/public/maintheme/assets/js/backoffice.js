$(document).ready(function(){;
    $('.slide-remove').on('click', function () {
        var name = $(this).data('name'); 
        var postId = $(this).data('id'); 
        
        Swal.fire({
            title: "Delete Confirmation",
            text: "Will you delete this '"+name+"' slide?",
            type: "error",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonClass: 'btn-sm btn-danger waves-effect waves-light',
            cancelButtonText: "No",
            confirmButtonText: "Yes, delete",
            closeOnConfirm: true,
            closeOnCancel: true
        }).then((result) => {
            if (result.value) {
                window.location.href = "slidebanners/delete/" + postId;
                Swal.fire({
                    text: "One slide has been deleted.",
                    icon: 'success',
                    showConfirmButton: false,
                    timer: 1500
                });
            }
        });
    });
    $('.brand-remove').on('click', function () {
        var name = $(this).data('name'); 
        var postId = $(this).data('id'); 
        
        Swal.fire({
            title: "Delete Confirmation",
            text: "The products related to this brand will be hidden and can not be undone. Will you delete this '"+name+"' brand? ",
            type: "error",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonClass: 'btn-sm btn-danger waves-effect waves-light',
            cancelButtonText: "No",
            confirmButtonText: "Yes, delete",
            closeOnConfirm: true,
            closeOnCancel: true
        }).then((result) => {
            if (result.value) {
                window.location.href = "brand/delete/" + postId;
                Swal.fire({
                    text: "One brand has been deleted.",
                    icon: 'success',
                    showConfirmButton: false,
                    timer: 1500
                });
            }
        });
    });
    $('.cat-remove').on('click', function () {
        var name = $(this).data('name'); 
        var postId = $(this).data('id'); 
        
        Swal.fire({
            title: "Delete Confirmation",
            text: "The section related to this category will be hidden and can not be undone. Will you delete this '"+name+"' category? ",
            type: "error",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonClass: 'btn-sm btn-danger waves-effect waves-light',
            cancelButtonText: "No",
            confirmButtonText: "Yes, delete",
            closeOnConfirm: true,
            closeOnCancel: true
        }).then((result) => {
            if (result.value) {
                window.location.href = "category/delete/" + postId;
                Swal.fire({
                    text: "One category has been deleted.",
                    icon: 'success',
                    showConfirmButton: false,
                    timer: 1500
                });
            }
        });
    });
    $('.sec-remove').on('click', function () {
        var name = $(this).data('name'); 
        var postId = $(this).data('id'); 
        
        Swal.fire({
            title: "Delete Confirmation",
            text: "Will you delete this '"+name+"' section? ",
            type: "error",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonClass: 'btn-sm btn-danger waves-effect waves-light',
            cancelButtonText: "No",
            confirmButtonText: "Yes, delete",
            closeOnConfirm: true,
            closeOnCancel: true
        }).then((result) => {
            if (result.value) {
                window.location.href = "section/delete/" + postId;
                Swal.fire({
                    text: "One section has been deleted.",
                    icon: 'success',
                    showConfirmButton: false,
                    timer: 1500
                });
            }
        });
    });
    $('.prod-remove').on('click', function () {
        var name = $(this).data('name'); 
        var postId = $(this).data('id'); 
        
        Swal.fire({
            title: "Delete Confirmation",
            text: "Will you delete this '"+name+"' product? ",
            type: "error",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonClass: 'btn-sm btn-danger waves-effect waves-light',
            cancelButtonText: "No",
            confirmButtonText: "Yes, delete",
            closeOnConfirm: true,
            closeOnCancel: true
        }).then((result) => {
            if (result.value) {
                window.location.href = "../../product/delete/" + postId;
                Swal.fire({
                    text: "One product has been deleted.",
                    icon: 'success',
                    showConfirmButton: false,
                    timer: 1500
                });
            }
        });
    });
    $('.epc-remove').on('click', function () {
        var name = $(this).data('name'); 
        var postId = $(this).data('id'); 
        
        Swal.fire({
            title: "Delete Confirmation",
            text: "Will you delete this EPC item? ",
            type: "error",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonClass: 'btn-sm btn-danger waves-effect waves-light',
            cancelButtonText: "No",
            confirmButtonText: "Yes, delete",
            closeOnConfirm: true,
            closeOnCancel: true
        }).then((result) => {
            if (result.value) {
                window.location.href = "epc/delete/" + postId;
                Swal.fire({
                    text: "One EPC item has been deleted.",
                    icon: 'success',
                    showConfirmButton: false,
                    timer: 1500
                });
            }
        });
    });
    $('.contact-remove').on('click',function () {
        var postId = $(this).data('id'); 
        var name = $(this).data('name');         

        Swal.fire({
            title: "Delete Confirmation",
            html: "Will you delete <b>'"+name+"'</b> message?",
            type: "error",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonClass: 'waves-effect waves-light',
            cancelButtonText: "No",
            confirmButtonText: "Yes, delete",
            closeOnConfirm: true,
            closeOnCancel: true
        }).then((result) => {
            if (result.value) {
                window.location.href = "contact/delete/" + postId;
                Swal.fire({
                    text: "One contact post has been deleted.",
                    icon: 'success',
                    showConfirmButton: false,
                    timer: 1500
                });
            }
        });
    });
    $('.show-remove').on('click',function () {
        var postId = $(this).data('id'); 
        var name = $(this).data('name');         

        Swal.fire({
            title: "Delete Confirmation",
            html: "Will you delete <b>'"+name+"'</b> showcase?",
            type: "error",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonClass: 'waves-effect waves-light',
            cancelButtonText: "No",
            confirmButtonText: "Yes, delete",
            closeOnConfirm: true,
            closeOnCancel: true
        }).then((result) => {
            if (result.value) {
                window.location.href = "product/delete/" + postId;
                Swal.fire({
                    text: "One showcase has been deleted.",
                    icon: 'success',
                    showConfirmButton: false,
                    timer: 1500
                });
            }
        });
    });
    $('.showb-remove').on('click',function () {
        var postId = $(this).data('id'); 
        var name = $(this).data('name');         

        Swal.fire({
            title: "Delete Confirmation",
            html: "Will you delete <b>'"+name+"'</b> showcase?",
            type: "error",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonClass: 'waves-effect waves-light',
            cancelButtonText: "No",
            confirmButtonText: "Yes, delete",
            closeOnConfirm: true,
            closeOnCancel: true
        }).then((result) => {
            if (result.value) {
                window.location.href = "banner/delete/" + postId;
                Swal.fire({
                    text: "One banner has been deleted.",
                    icon: 'success',
                    showConfirmButton: false,
                    timer: 1500
                });
            }
        });
    });
    $('.abimg-remove').on('click',function () {
        var postId = $(this).data('id');        

        Swal.fire({
            title: "Delete Confirmation",
            html: "Will you delete this image?",
            type: "error",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonClass: 'waves-effect waves-light',
            cancelButtonText: "No",
            confirmButtonText: "Yes, delete",
            closeOnConfirm: true,
            closeOnCancel: true
        }).then((result) => {
            if (result.value) {
                window.location.href = "about/image/delete/" + postId;
                Swal.fire({
                    text: "One image has been deleted.",
                    icon: 'success',
                    showConfirmButton: false,
                    timer: 1500
                });
            }
        });
    });
});


//Dropdown dynamic dependant to get Section's names
$('select#section').prop('readonly', true);
$('select#cate').on('change',function(){
    var cate = $(this).val();
    var url = window.location.origin+'/backoffice/probrands/select/';
    if (cate){
        $.ajax({
            url : url + cate,
            type : "GET",
            dataType : "json",
            success:function(data)
            {
                // console.log(data);
                $('select#section').empty();
                $.each(data, function(key,value){
                    $('select#section').append('<option value="'+ value +'">'+ value +'</option>');
                });
                setTimeout(() => {
                    $('select#section').prop('disabled', false);
                }, 0);
            },
        });
    }
});


function bussinesses_nearby_btn_click(){
    console.log("bussinesses_nearby_btn_click");
    document.getElementById("div_searchpanel").style.display = "block";
    document.getElementById("bussinesses_nearby_btn").style.display = "none";
}

function changeSearchOption(a){
    if(a == 'Cat'){
        document.getElementById("select_category").value = 0;
        document.getElementById("select_state").value = 0;
        document.getElementById("select_district").value = 0;
        document.getElementById("select_block").value = 0;
        document.getElementById("select_village").value = 0;
        document.getElementById("select_cat_DD").style.display = "block";
        document.getElementById("btnSearchviaCat").style.display = "block";
        document.getElementById("select_place_DD").style.display = "none";
        document.getElementById("btnSearchviaPlace").style.display = "none";

    }else if(a == 'Place'){
        document.getElementById("select_state").value = 0;
        document.getElementById("select_district").value = 0;
        document.getElementById("select_block").value = 0;
        document.getElementById("select_village").value = 0;


        document.getElementById("select_cat_DD").style.display = "none";
        document.getElementById("btnSearchviaCat").style.display = "none";
        document.getElementById("select_place_DD").style.display = "block";
        document.getElementById("btnSearchviaPlace").style.display = "block";

    }
    
}

function select_category(val){
    var cat = val.value;
    var url = window.location.href.includes("shop_search.php");
    console.log(window.location.href);
    console.log(url);
    console.log(cat);
    if(url){
        if(cat == "0"){
            document.getElementById("select_place_DD").style.display = "none";
    
        }else{
            document.getElementById("select_place_DD").style.display = "block";
    
        }
    }else{
        location.replace("./shop_search.php?cat="+cat)
    }
    
    
}

function get_categories(){
    var id = 1;//$(this).val();

    $.ajax({
        type: "GET",
        url: "./ajax/_return_categories.php",
        data: "pass_id="+id,
        success: function( data ) {
            //console.log(id);
            //console.log(data);
            $('#select_category').children().remove().end()

            var category_element = document.getElementById('select_category');
            var updated_options = JSON.parse(data);
            
            category_element.options.add( new Option('Select Option', '0') );

            for(var i = 0, l = updated_options.length; i < l; i++){
                var option = updated_options[i];
                var display_text = option.loc_category_name+' ('+option.category_name+')';
                category_element.options.add( new Option(display_text, option.id) );
            }
        }
        
        
    });
}

function get_states(){
    var id = 1;//$(this).val();

    $.ajax({
        type: "GET",
        url: "./ajax/_return_states.php",
        data: "pass_id="+id,
        success: function( data ) {
            //console.log(id);
            //console.log(data);
            $('#select_state').children().remove().end()

            var state_element = document.getElementById('select_state');
            var updated_options = JSON.parse(data);
            
            state_element.options.add( new Option('Select State', '0') );

            for(var i = 0, l = updated_options.length; i < l; i++){
                var option = updated_options[i];
                var display_text = option.loc_state_name+' ('+option.state_name+')';
                state_element.options.add( new Option(display_text, option.id) );
            }
        }
        
        
    });
    
}

function get_districts(dist){
    var id = dist.value;

    $.ajax({
        type: "GET",
        url: "./ajax/_return_districts.php",
        data: "pass_id="+id,
        success: function( data ) {
            //console.log(id);
            console.log(data);
            $('#select_district').children().remove().end()

            var district_element = document.getElementById('select_district');
            var updated_options = JSON.parse(data);
            
            district_element.options.add( new Option('Select Location', '0') );

            for(var i = 0, l = updated_options.length; i < l; i++){
                var option = updated_options[i];
                var display_text = option.loc_district_name+' ('+option.district_name+')';
                district_element.options.add( new Option(display_text, option.id) );
            }
        }
        
        
    });
}

function get_blocks(dist){
    var id = dist.value;

    $.ajax({
        type: "GET",
        url: "./ajax/_return_blocks.php",
        data: "pass_id="+id,
        success: function( data ) {
            //console.log(id);
            console.log(data);
            $('#select_blocks').children().remove().end()

            var block_element = document.getElementById('select_blocks');
            var updated_options = JSON.parse(data);
            
            block_element.options.add( new Option('Select Block', '0') );

            for(var i = 0, l = updated_options.length; i < l; i++){
                var option = updated_options[i];
                var display_text = option.loc_block_name+' ('+option.block_name+')';
                block_element.options.add( new Option(display_text, option.id) );
            }
        }
        
        
    });
}

function get_villages(dist){
    var id = dist.value;

    $.ajax({
        type: "GET",
        url: "./ajax/_return_village.php",
        data: "pass_id="+id,
        success: function( data ) {
            //console.log(id);
            console.log(data);
            $('#select_village').children().remove().end()

            var village_element = document.getElementById('select_village');
            var updated_options = JSON.parse(data);
            
            village_element.options.add( new Option('Select Village / City', '0') );

            for(var i = 0, l = updated_options[0].length; i < l; i++){
                var option = updated_options[0][i];
                var display_text = option.loc_village_name+' ('+option.village_name+')';
                village_element.options.add( new Option(display_text, option.id) );
            }
        }
        
        
    });
}

function btn_getsearchresult(type, page){
    console.log('Search Btn Clicked');
    var cat_sel = $("#select_category").val();
    //var prod_sel = $("#sure_product_dd").val();
    var state_sel = $("#select_state").val();
    var dist_sel = $("#select_district").val();
    var blk_sel = $("#select_block").val();
    var vill_sel = $("#select_village").val();
    //var shop_searched = $("#search_by_shop_text").val();
    //console.log(vill_sel);
    //console.log(type);
    var prevPage = Number(page) - 1;
    var nextPage = Number(page) + 1;
    var ret_file = '';
    var ret_data = '';
    document.getElementById('shoplist').innerHTML = '<div class="search-results post-item col-md-12 col-sm-12" ><div class="col-md-4 col-sm-5"></div><div class="col-md-8 col-sm-8" style="clear:none;"></div><div class="col-md-12 text-center"><h4 style="margin:0px">Searching ...</h4></div></div>';

    document.getElementById("shoplist").scrollIntoView();
    var imagedivwidth = document.getElementById("shoplist").getElementsByClassName("search-results")[0].getElementsByClassName("col-sm-5")[0].offsetWidth;
    //console.log(imagedivwidth);

    if(type == 'cat'){
        console.log('Category Search');
        ret_file = "./ajax/_return_shoplist_by_cat.php";
        ret_data = "pass_id="+cat_sel+"&state="+state_sel+"&dist="+dist_sel+"&blk="+blk_sel+"&vill="+vill_sel+"&page="+page;
    }else if(type == 'vill'){
        console.log('Village Search');
        ret_file = "./ajax/_return_shoplist_by_vill.php";
        ret_data = "pass_id="+cat_sel+"&state="+state_sel+"&dist="+dist_sel+"&blk="+blk_sel+"&vill="+vill_sel+"&page"+page;
    }
    
    $.ajax({
        type: "GET",
        url: ret_file,
        data: ret_data,
        success: function( data ) {
            //console.log(id);
            //console.log(data);
            //Villages
            $('#shoplist').children().remove().end()
            $('#page_numbering').children().remove().end()
            var village_element = document.getElementById('shoplist');
            var page_element = document.getElementById('page_numbering');
            var updated_options = JSON.parse(data);
            //console.log(updated_options.length);
            //village_element.options.add( new Option('गाव निवडा / Select Village', '0') );

            for(var i = 0, l = updated_options.length; i < l; i++){
                
                var shopname = updated_options[i].dukaan_name;
                shopname = shopname.trim();
                shopname = shopname.toLowerCase();
                shopname = shopname.replace(" ", "-");
                var shop_addr;
                
                const img = new Image();
                
                img.src = 'assets/images/shops/'+updated_options[i].shop_photo;
                //or however you get a handle to the IMG
                var width = img.width;
                var height = img.width;
                //console.log("Width: "+width);
                //console.log("assets/images/shops/"+updated_options[i].shop_photo);

                

                
                if(updated_options[i].village_name){
                    shop_addr = updated_options[i].village_name+', '+updated_options[i].block_name;
                }else{
                    shop_addr = updated_options[i].block_name;

                }
                if(updated_options[i].state_abbr){
                    shop_addr += ', '+updated_options[i].state_abbr;
                }
                //var display_text = '<div class="container" style="border:groove;"><div class="row "><div class="col text-right"><h4>दुकान: </h4></div><div class="col text-left"><a href="https://www.gaavkhoj.com/village-to-village/oil_shop.php"><h3>सिद्धि लकड़ी घाना आयल</h3></a></div></div><div class="row"><div class="col text-right"><h4>गाव: </h4></div><div class="col text-left"><h4>औसा</h4></div></div><div class="row"><div class="col text-right"><h4>ब्लॉक: </h4></div><div class="col text-left"><h4>लातूर</h4></div></div></div><br>'
                //village_element.innerHTML = display_text;
                /*
                village_element.innerHTML += '<div class="post-item col-md-4"><div class="post-image"><a href="https://www.deshkhoj.com/shops/near-me/'+updated_options[i].id+'/'+shopname+'" target="_blank"><img src="assets/images/blog/large/1.jpg" alt="Our Blog post image goes here"></a></div><article class="post-content main-border"><div class="post-info-container"><div class="post-info"><h2 style="font-size: 24px;min-height: 80px;"><a href="https://www.deshkhoj.com/shops/near-me/'+updated_options[i].id+'/'+shopname+'" target="_blank">'+updated_options[i].dukaan_name+'</a></h2></div></div><p style="font-size: 20px;min-height: 150px;"><b>गाव: '+updated_options[i].village_name+'<br>ब्लॉक: '+updated_options[i].block_name+'</b></p><div class="bottom_tools"><a href="https://www.deshkhoj.com/shops/near-me/'+updated_options[i].id+'/'+shopname+'" target="_blank" class="f-right more_btn shape" style="width:100%;text-align: center;font-size: 18px;" id="myBtn"><b>अधिक जानकारी पूछें <br/> क्लिक करें </b></a></div></article></div></div>';
                */
               /*
               village_element.innerHTML += '<div class="search-results post-item col-md-12 col-sm-12" ><div class="col-md-4 col-sm-4" ><a href="https://www.deshkhoj.com/shops/near-me/'+updated_options[i].id+'/'+shopname+'" target="_blank"><img src="assets/images/shops/'+updated_options[i].shop_photo+'" alt="Our Shop image goes here"></a></div><div class="col-md-8 col-sm-8" style="clear:none;"><div class="post-info-container"><div class="post-info"><a href="https://www.deshkhoj.com/shops/near-me/'+updated_options[i].id+'/'+shopname+'" target="_blank"><p style="font-size: 20px;margin-bottom: 0px;"><b>'+updated_options[i].dukaan_name+'<br>'+shop_addr+'<br>DK Verified <img src="assets/images/check (3).png"></b></p></a></div></div></div><div class="col-md-12 text-center"><h4 style="margin:0px">Call Now | Send Email | WhatsApp Enquiry</h4></div></div><br>'
               */

               
               //Static Image
               /*
               village_element.innerHTML += '<div class="search-results post-item col-md-12 col-sm-12"><div class="col-md-4 col-sm-4"><a href="https://www.deshkhoj.com/shops/near-me/'+updated_options[i].id+'/'+shopname+'" target="_blank"><img src="assets/images/shops/98 (1).jpg" alt="Shop image goes here"></a></div><div class="col-md-8 col-sm-8" style="clear:none;"><div class="post-info-container"><div class="post-info"><a href="https://www.deshkhoj.com/shops/near-me/'+updated_options[i].id+'/'+shopname+'" target="_blank"><span class="dk_verified_span" ><img class="dk_verified_img" src="assets/images/check (3).png"> <b>DK Verified</b></span><br><span class="shop_name">'+updated_options[i].dukaan_name+'</span><br><span class="shop_addr">'+shop_addr+'</span></a></div></div></div><div class="col-md-12 text-center"><h4 style="margin:0px">Call Now | Send Email | WhatsApp Enquiry</h4></div></div>'
               */
            /*
              village_element.innerHTML += '<div class="search-results post-item col-md-12 col-sm-12"><div class="col-md-4 col-sm-4"><a href="https://www.deshkhoj.com/shop.php?id='+updated_options[i].id+'&name='+shopname+'" target="_blank"><img src="assets/images/shops/'+updated_options[i].shop_photo+'" alt="Shop image goes here" style="width:'+imagedivwidth+'px;height:'+imagedivwidth+'px"></a></div><div class="col-md-8 col-sm-8" style="clear:none;"><div class="post-info-container"><div class="post-info"><a href="https://www.deshkhoj.com/shop.php?id='+updated_options[i].id+'&name='+shopname+'" target="_blank"><span class="shop_name">'+updated_options[i].dukaan_name+'</span><br><span class="shop_addr">'+shop_addr+'</span><br><span class="dk_verified_span" ><img class="dk_verified_img" src="assets/images/check (3).png"> <b>DK Verified</b></span><br></a></div></div></div><div class="col-md-12 text-center"><h4 style="margin:0px"><a>Call Now</a>   |   <a>Send Email</a>   |   <a>WhatsApp Enquiry</a></h4></div></div>'
            */
            
              village_element.innerHTML += '<div class="search-results post-item col-md-12 col-sm-12"><div class="col-md-4 col-sm-5"><a href="https://www.deshkhoj.com/shop.php?id='+updated_options[i].id+'&name='+shopname+'" target="_blank"><img src="assets/images/shops/'+updated_options[i].shop_photo+'" alt="Shop image goes here" style="width:'+imagedivwidth+'px;height:'+imagedivwidth+'px;top: 4px;position: relative;"></a></div><div class="col-md-8 col-sm-7" style="clear:none;"><div class="post-info-container"><div class="post-info"><a href="https://www.deshkhoj.com/shop.php?id='+updated_options[i].id+'&name='+shopname+'" target="_blank"><span class="shop_name">'+updated_options[i].dukaan_name+'</span><br><span class="shop_addr">'+shop_addr+'</span><br><span class="dk_verified_span" ><img class="dk_verified_img" src="assets/images/check (3).png"> <b>DK Verified</b></span></a><h6 style="margin-bottom: 8px;"></h6><span class="shop_addr"><a><img class="dk_verified_img" src="assets/images/call_2.png">Call Now</a><br><a><img class="dk_verified_img" src="assets/images/mail.png">Send Email</a><br><a><img class="dk_verified_img" src="assets/images/whatsapp_2.png">WhatsApp Enquiry</a></span></div></div></div></div>'
            }
            /* Prev Page Starts*/
            if(page > 1){
                page_element.innerHTML = '<div class="post-item col-md-4"><a class="btn btn-block-full btn-xl fx shape new-angle animated fadeInUp" style="background-color:#ffcc80" data-animate="fadeInUp" onclick="btn_getsearchresult('+"'"+'cat'+"'"+', '+"'"+prevPage+"'"+')" target="_blank"><span class="bolder">Prev</span>  <span class="fa fa-long-arrow-right"></span></a></div>'
            }else{
                page_element.innerHTML = '<div class="post-item col-md-4"></div>'
            }

            /*Prev Page Ends */

            /* Page no Starts */

            page_element.innerHTML += '<div class="post-item col-md-4" style="text-align:center"><h3>Page '+page+'</h3></div>'

            /* Page no Ends */

            /* Next Page Starts */

            if(updated_options.length < 11){
                page_element.innerHTML += '<div class="post-item col-md-4"></div></div>'
            }else{
                page_element.innerHTML += '<div class="post-item col-md-4"><a class="btn btn-block-full btn-xl fx shape new-angle animated fadeInUp" style="background-color:#ffcc80" data-animate="fadeInUp" onclick="btn_getsearchresult('+"'"+'cat'+"'"+', '+"'"+nextPage+"'"+')" ><span class="bolder">Next</span>  <span class="fa fa-long-arrow-right"></span></a></div></div>'
            }

            /* Next Page Ends */

            /*
            if(updated_options.length < 11){
                page_element.innerHTML += '<div class="row"><div class="post-item col-md-4"></div><div class="post-item col-md-4" style="text-align:center"><h3>Page 1</h3></div><div class="post-item col-md-4"></div></div>'
            }else{
                page_element.innerHTML += '<div class="row"><div class="post-item col-md-4"></div><div class="post-item col-md-4" style="text-align:center"><h3>Page 1</h3></div><div class="post-item col-md-4"><a class="btn btn-block-full btn-xl fx shape new-angle animated fadeInUp" style="background-color:#ffcc80" data-animate="fadeInUp" onclick="btn_getsearchresult("cat", "'+page+1+'")" target="_blank"><span class="bolder">Next</span>  <span class="fa fa-long-arrow-right"></span></a></div></div>'
            }
            */
            
            
        }
        
        
    });

}


function isValid_Mobile_Number(mobile_number) {
    // Regex to check valid
    // mobile_number  
    document.getElementById("mobile").disabled = true;
    document.getElementById("getOTP").disabled = true;

    let regex = new RegExp(/(0|91)?[6-9][0-9]{9}/);
    
    // if mobile_number 
    // is empty return false
    if (mobile_number == null) {
        console.log("MOB: false");
    }
 
    // Return true if the mobile_number
    // matched the ReGex
    if (regex.test(mobile_number) == true) {
        //return console.log("REGEX: true");
        
        document.getElementById("txtOTP").display = block;
        document.getElementById("verifyOTP").display = block;
        var ret_file = "https://2factor.in/API/V1/14f757aa-a364-11eb-80ea-0200cd936042/SMS/"+mobile_number+"/AUTOGEN/DeshKhoj+Registration";
        //var ret_file = "https://2factor.in/API/V1/XXXX-XXXX-XXXX-XXXX-XXXX/SMS/+919999999999/AUTOGEN/OTP1'";
        $.ajax({
            type: "GET",
            url: ret_file,
            //data: ret_data,
            success: function( data ) {
                console.log(data);
            }
        });
        
    }
    else {
        //return console.log("REGEX: false");
        alert("Please Enter Correct Mobile Number");
    }
}
/*
function onKeyPressisValid_Mobile_Number(mobile_number){
    console.log(mobile_number);
    if (mobile_number.length > 10) return false;
}
*/

function verifyOTP(mobile_number, OTP) {
   
    
        var ret_file = "https://2factor.in/API/V1/14f757aa-a364-11eb-80ea-0200cd936042/SMS/VERIFY3/"+mobile_number+"/"+OTP;
        //var ret_file = "https://2factor.in/API/V1/XXXX-XXXX-XXXX-XXXX-XXXX/SMS/+919999999999/AUTOGEN/OTP1'";
        $.ajax({
            type: "GET",
            url: ret_file,
            //data: ret_data,
            success: function( data ) {
                console.log(data);
                if(data.Details == "OTP Matched"){
                    alert("OTP Verified!!! Please fill the Form");
                    document.getElementById("spanOTP").classList.add("disabledbutton");
                    document.getElementById("businessDetails").classList.remove("hidden");
                    
                }else{
                    alert("OTP Error!!! "+data.Details);
                }
            }
        });
        document.getElementById("txtOTP").display = block;
        document.getElementById("verifyOTP").display = block;
    
}

function shopPhotoSelect(){
    console.log("Shop photo select function call");
}

function prodPhotoSelect(count){
    console.log("Prod photo select function call: "+count);

}

function addNewProd(count){
    console.log("Add new Prod function call: "+count);
    var page_element = document.getElementById("productList");
    console.log("span count: "+page_element.getElementsByTagName("span").length+" Prod Count: "+page_element.getElementsByTagName("span").length/3);
    var prod_count = page_element.getElementsByTagName("span").length/3;
    var new_prod_count = (page_element.getElementsByTagName("span").length/3)+1;
    
    //page_element.innerHTML += '<span id="prod_'+new_prod_count+'"><input type="text" placeholder="Product Name" id="prodName_'+new_prod_count+'"><input type="text" placeholder="Weight / No. of Pieces" id="prodPeices_'+new_prod_count+'"><input type="text" placeholder="Rate per unit" id="prodUnit_'+new_prod_count+'"><input type="file" accept="image/jpeg, image/png, image/jpg" id="prod_photo_'+new_prod_count+'"><a class="btn btn-block-full btn-xl fx shape new-angle animated" id="prod_photo_'+new_prod_count+'.click()" style="background-color:#e97e38;margin-bottom: 10px;" data-animate="fadeInUp" onclick="prod_photo_'+new_prod_count+'.click()" ><span class="bolder"> Select Photo </span>  <span class="fa fa-long-arrow-right"></span></a></span>';

    page_element = '<span id="prod_'+new_prod_count+'"><input type="text" placeholder="Product Name" id="prodName_'+new_prod_count+'"><input type="text" placeholder="Weight / No. of Pieces" id="prodPeices_'+new_prod_count+'"><input type="text" placeholder="Rate per unit" id="prodUnit_'+new_prod_count+'"><input type="file" accept="image/jpeg, image/png, image/jpg" id="prod_photo_'+new_prod_count+'"><a class="btn btn-block-full btn-xl fx shape new-angle animated" id="prod_photo_'+new_prod_count+'.click()" style="background-color:#e97e38;margin-bottom: 10px;" data-animate="fadeInUp" onclick="prod_photo_'+new_prod_count+'.click()" ><span class="bolder"> Select Product '+new_prod_count+' Photo </span>  <span class="fa fa-long-arrow-right"></span></a></span>';

    $('#productList').append(page_element);
}

function newRegFormSubmit(){
    var name_val = document.getElementById("reg_user_name").value;
    var nameBusiness_val = document.getElementById("reg_business_name").value;
    var shopPhoto = document.getElementById("reg_shop_photo").values;
    var select_state_val = document.getElementById("select_state").value;
    var select_district_val = document.getElementById("select_district").value;
    var select_blocks_val = document.getElementById("select_blocks").value;
    var select_village_val = document.getElementById("select_village").value;
    var reg_pincode_val = document.getElementById("reg_pincode").value;
    var reg_whatsapp_val = document.getElementById("reg_whatsapp").value;
    var reg_email_val = document.getElementById("reg_email").value;
    var reg_shop_desc_val = document.getElementById("reg_shop_desc").value;
    var reg_cat_1_val = document.getElementById("reg_cat_1").value;
    var reg_cat_2_val = document.getElementById("reg_cat_2").value;
    var reg_cat_3_val = document.getElementById("reg_cat_3").value;
    //var nameBusiness = document.getElementById("reg_business_name").value;
    var prod_name = [];
    var prod_peices = [];
    var rate = [];
    var prod_photo = [];

    var page_element = document.getElementById("productList");
    console.log("span count: "+page_element.getElementsByTagName("span").length+" Prod Count: "+page_element.getElementsByTagName("span").length/3);
    var prod_count = page_element.getElementsByTagName("span").length/3;
    
    
    //uploadFile(document.getElementById("reg_shop_photo").values);

    
    for(let i=1; i <= prod_count;i++){
        console.log('Prod Name: '+document.getElementById("prodName_"+i).value);
        prod_name.push(document.getElementById("prodName_"+i).value);
        prod_peices.push(document.getElementById("prodPeices_"+i).value);
        rate.push(document.getElementById("prodUnit_"+i).value);
        prod_photo.push(document.getElementById("prod_photo_"+i).value.split("\\").pop());
    }
    //console.log(prod_name,prod_peices,rate,prod_photo);
    console.log(prod_photo[0]);
    
    if(name_val !="" && nameBusiness_val !="" && reg_shop_desc_val !="" && reg_cat_1_val !=""){
        $.ajax({
            url: "./ajax/_add_new_tmp_shop.php",
            type: "GET",
            data: {
                name: name_val,
                nameBusiness: nameBusiness_val,
                select_state: select_state_val,
                select_district: select_district_val,
                select_blocks: select_blocks_val,
                select_village: select_village_val,
                reg_pincode: reg_pincode_val,
                reg_whatsapp: reg_whatsapp_val,
                reg_email: reg_email_val,
                reg_shop_desc: reg_shop_desc_val,
                reg_cat_1: reg_cat_1_val,
                reg_cat_2: reg_cat_2_val,
                reg_cat_3: reg_cat_3_val				
            },
            cache: false,
            success: function(dataResult){
                //var dataResult = JSON.parse(dataResult);
                //console.log(dataResult);
                if(dataResult){
                    console.log(dataResult);
                    uploadFile(dataResult, "Shop", "reg_shop_photo");
                }
                else if(dataResult.statusCode==201){
                    alert("Error occured !");
                }
                
            }
        });
        }
        else{
            alert('Please fill all the required field !');
        }
    
    //uploadFile("8", "Shop", "reg_shop_photo");

    //console.log(select_state);
}

async function uploadFile(shopId, cat, inputId){

    console.log("Upload File: "+inputId+" Cat: "+cat);
    
    let formData = new FormData(); 
    formData.append("file", reg_shop_photo.files[0]);
    await fetch('./new_shop_upload.php', {
        method: "POST",
        shop_id: shopId, 
        body: formData
    }); 
    for (const value of formData.values()) {
        console.log(value);
    }
    alert("Upload Clicked");


}


function newRegFormSubmit_2(){
    console.log("Form 2 Clicked");
    //var dataArray = [];
    //var varArray = [{"reg_user_name": $("#reg_user_name").val(),"reg_business_name": $("#reg_business_name").val(),["reg_shop_photo"]: $("#reg_shop_photo").val(),["select_state"]: $("#select_state").val()}];
    var name_val = $("#reg_user_name").val();
    var nameBusiness_val = $("#reg_business_name").val();
    var shopPhoto = $("#reg_shop_photo").val();
    var select_state_val = $("#select_state").val();
    var select_district_val = $("#select_district").val();
    var select_blocks_val = $("#select_blocks").val();
    var select_village_val = $("#select_village").val();
    var reg_pincode_val = $("#reg_pincode").val();
    var reg_whatsapp_val = $("#reg_whatsapp").val();
    var reg_email_val = $("#reg_email").val();
    var reg_shop_desc_val = $("#reg_shop_desc").val();
    var reg_cat_1_val = $("#reg_cat_1").val();
    var reg_cat_2_val = $("#reg_cat_2").val();
    var reg_cat_3_val = $("#reg_cat_3").val();

    var prod_name = [];
    var prod_peices = [];
    var rate = [];
    var prod_photo = [];

    var page_element = document.getElementById("productList");
    console.log("span count: "+page_element.getElementsByTagName("span").length+" Prod Count: "+page_element.getElementsByTagName("span").length/3);
    var prod_count = page_element.getElementsByTagName("span").length/3;

    for(let i=1; i <= prod_count;i++){
        console.log('Prod Name: '+$("#prodName_"+i).val());
        prod_name.push($("#prodName_"+i).val());
        prod_peices.push($("#prodPeices_"+i).val());
        rate.push($("#prodUnit_"+i).val());
        prod_photo.push(document.getElementById("prod_photo_"+i).value.split("\\").pop());
    }
    /*
    varArray.forEach(myFunction)
    function myFunction(item, index, arr){
        dataArray.push({item: $("#"+item).val()})
    }
    */

    //let myForm = document.getElementById('businessDetailsForm');
    //let formData = new FormData(myForm);
    if( name_val != "" && nameBusiness_val != "" && reg_whatsapp_val != "" && reg_shop_desc_val != "" && reg_cat_1_val != ""){
    $("#form_container").hide();
    $("#loading-image").show();
    $.ajax({
        method: "POST",
        url: './ajax/_add_new_tmp_shop_2.php',
        data: {
            name_val: name_val,
            nameBusiness_val: nameBusiness_val,
            shopPhoto: shopPhoto,
            select_state_val: select_state_val,
            select_district_val: select_district_val,
            select_blocks_val: select_blocks_val,
            select_village_val: select_village_val,
            reg_pincode_val: reg_pincode_val,
            reg_whatsapp_val: reg_whatsapp_val,
            reg_email_val: reg_email_val,
            reg_shop_desc_val: reg_shop_desc_val,
            reg_cat_1_val: reg_cat_1_val,
            reg_cat_2_val: reg_cat_2_val,
            reg_cat_3_val: reg_cat_3_val,
            prod_count: prod_count,
            prod_name: prod_name,
            prod_peices: prod_peices,
            rate: rate,
            prod_photo: prod_photo
        },
        async: false,
        //processData: false,
        success: function(response){
            console.log(response);
            uploadFile_2(response, "Shop", "reg_shop_photo");
            addNewTmpProd(prod_count, prod_name, prod_peices, rate, prod_photo, response);
	    alert("Shop Registered");
            window.location.href = 'index.php';
        },
        error: function(xhr, status, error){
            console.error(xhr);
	    alert(xhr);
            $("#loading-image").hide();
        }
    });
    }else{
	alert("Please Fill All the Empty Fields");
    }
    
    //uploadFile_2(5);
    
    //console.log(prod_photo)
}


async function uploadFile_2(Id, Cat, PhotoCat){
    console.log("Upload File 2 Ran");

    var file_data = $('#reg_shop_photo').prop('files')[0];
    var form_data = new FormData();
    
    form_data.append('file', file_data);
    form_data.append('id', Id);//json object which I am trying to send
    form_data.append('cat', Cat);//json object which I am trying to send
    $.ajax({
        url: 'new_shop_upload_2.php',
        cache: false,
        contentType: false,
        processData: false,
        data: form_data,
        type: 'post',
        success: function(php_script_response){
            console.log(php_script_response);
        }
    });
}

async function addNewTmpProd(count, name, pieces, rate, photo, shopId){
    console.log("Add New Tmp Prod");
    //console.log(count);
    //console.log(name);
    //console.log(pieces);
    //console.log(rate);
    //console.log(photo);

    
    //var file_data = $('#reg_shop_photo').prop('files')[0];
    
    var new_arr = [];

    for(let i=0; i<count; i++){
        
        var j = i+1;
        var imgName = 'prod_photo_'+j; 
        var form_data = new FormData();
        var file_data = $('#'+imgName).prop('files')[0];
        console.log(file_data);
        var form_data = new FormData();

        form_data.append('file', file_data);
        form_data.append('prodName', name[i]);//json object which I am trying to send
        form_data.append('prodPeices', pieces[i]);//json object which I am trying to send
        form_data.append('prodUnit', rate[i]);//json object which I am trying to send
        form_data.append('prodPhoto', photo[i]);//json object which I am trying to send
        form_data.append('shopId', shopId);//json object which I am trying to send
        $.ajax({
            url: './ajax/_add_new_tmp_prods.php',
            cache: false,
            contentType: false,
            processData: false,
            data: form_data,
            timeout: 1000,
            async: false,
            type: 'post',
            success: function(response){
                console.log(response);
                uploadProdFile(response, shopId, imgName, j);
                //yourFunction();
                //new_arr.push([response, shopId, imgName, j]);
            }
        });
    }

    console.log(new_arr);
    
}

function uploadProdFile(prodId, shop_id, imgId, j){
    console.log("Upload Prod File Ran");
    console.log(j);
    var file_data = $('#'+imgId).prop('files')[0];
    var form_data = new FormData();
    
    form_data.append('file', file_data);
    form_data.append('prodId', prodId);//json object which I am trying to send
    form_data.append('shop_id', shop_id);//json object which I am trying to send
    //form_data.append('cat', Cat);//json object which I am trying to send
    $.ajax({
        url: 'new_prod_upload.php',
        cache: false,
        contentType: false,
        processData: false,
        data: form_data,
        //async: true,
        type: 'post',
        success: function(php_script_response){
            console.log(php_script_response);
        }
    });
}

const yourFunction = async () => {
    await delay(5000);
    console.log("Waited 5s");
  
    await delay(5000);
    console.log("Waited an additional 5s");
  };


///////////////Job Form Functions Starts//////////////////////////

function newJobFormSubmit(){
    console.log("Job Form Clicked");
    var name_val = $("#reg_user_name").val();
    var jobCV = $("#reg_job_cv").val();
    
    var reg_whatsapp_val = $("#reg_whatsapp").val();
    var reg_email_val = $("#reg_email").val();
    
    console.log(name_val, jobCV, reg_email_val, reg_whatsapp_val);
    
    
    if( name_val != "" && jobCV != "" && reg_whatsapp_val != "" && reg_email_val != "" ){
        $("#form_container").hide();
        $("#loading-image").show();
        $.ajax({
            method: "POST",
            url: './ajax/_add_new_job_cv.php',
            data: {
                name_val: name_val,
                jobCV: jobCV,
                reg_whatsapp_val: reg_whatsapp_val,
                reg_email_val: reg_email_val
                
            },
            async: false,
            //processData: false,
            success: function(response){
                console.log(response);
                uploadJobCV(response, "Job", "reg_shop_photo");
                //addNewTmpProd(prod_count, prod_name, prod_peices, rate, prod_photo, response);
                alert("Job Form Registered");
                window.location.href = 'index.php';
            },
            error: function(xhr, status, error){
                console.error(xhr);
                alert(xhr);
                $("#loading-image").hide();


            }
        });
    }else{
        alert("Please Fill All the Empty Fields");
    }
    
    //uploadFile_2(5);
    
    //console.log(prod_photo)
}


async function uploadJobCV(Id, Cat, PhotoCat){
    console.log("Upload File 2 Ran");

    var file_data = $('#reg_job_cv').prop('files')[0];
    var form_data = new FormData();
    
    form_data.append('file', file_data);
    form_data.append('id', Id);//json object which I am trying to send
    form_data.append('cat', Cat);//json object which I am trying to send
    $.ajax({
        url: 'new_job_cv_upload.php',
        cache: false,
        contentType: false,
        processData: false,
        data: form_data,
        type: 'post',
        success: function(php_script_response){
            console.log(php_script_response);
        }
    });
}


///////////////Job Form Functions Ends//////////////////////////

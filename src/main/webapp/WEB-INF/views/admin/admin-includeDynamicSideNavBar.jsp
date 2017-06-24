<script type="text/javascript">
function fetchSideNavBar(str){
	$.ajax({
		type : "GET",
		url : "admin-fetchAllCategorySubCategory",
		data : "",
		contentType : false,
		processData : false,
		success : function(data) {
			if(data.status){
				var abc = "";
				var cde = "";
				var efg = "";
				var lengthLi;
				for(var i = 0; i<data.categoryAvailables.length; i++){
					 for(var k = 0; k<data.subCategoryAvailables.length; k++){
						 efg = "<ul class=\"ml-menu font-list\" id='ul"+(Number(Number(i)) + (Number(1)))+"'>"
						 if(data.categoryAvailables[i].id === data.subCategoryAvailables[k].categoryId){
							 cde = cde + "<li><a href=\"#\">"+data.subCategoryAvailables[k].subCategoryName+"</a></li>"
						 }else{
							 efg ="";
							 cde ="";
						 }
					 }
					if(cde !== ""){
						abc = abc + "<li><a href=\"javascript:void(0);\" id='"+(Number(Number(i)) + (Number(1)))+"' class=\"menu-toggle waves-effect waves-block\" onclick=\"addClass('"+(Number(Number(i)) + (Number(1)))+"')\"><img src=\"resources/images/tulip.png\" alt=\"\"/><span>"+data.categoryAvailables[i].categoryName+"</span> </a>"
						abc = abc + efg + cde +"</ul></li>";
					}else{
						abc = abc +"<li><a href=\"javascript:void(0);\" id='"+(Number(Number(i)) + (Number(1)))+"' class=\"waves-effect waves-block\" onclick=\"addClass('"+(Number(Number(i)) + (Number(1)))+"')\"><img src=\"resources/images/tulip.png\" alt=\"\"/><span>"+data.categoryAvailables[i].categoryName+"</span> </a>"
					}
						lengthLi = data.categoryAvailables.length;
				}
				 if(str === 1){
					$("#sideNavUl").append(abc);
				}else{
					removeLi(lengthLi);
					$("#sideNavUl").append(abc);
				}
				
			}
		},
		error : function(e) {
			alert("Error");
			swal({
				  title: 'Error!',
				  text: 'Category Not Inserted Successfully!!!',
				  type: 'error',
				  confirmButtonText :"OK",
				  allowEscapeKey:true,
				  confirmButtonClass:"btn btn-raised gradient-right",
				  animation:true
				});
		}
	});
	
}
function removeLi(lengthLi){
	for(var i = 0 ; i < (Number(Number(lengthLi)) - (Number(1))) ; i++){
		$("#"+(Number(Number(i)) + (Number(1)))).remove();
	}
}
function addClass(id){
	alert(id);
	if($("#"+id).hasClass("toggled")){
		alert("In if");
		$("#"+id).removeClass("toggled");
		$("#ul"+id).attr("style","display:none");
	}else{
		alert("In else");
		$("#"+id).addClass("toggled");
		$("#ul"+id).attr("style","display:block");
	}
	
}
</script>

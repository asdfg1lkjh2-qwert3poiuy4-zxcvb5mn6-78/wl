<script type="text/javascript">
var lengthLi = "";
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
				var efg= "";
				for(var i = 0; i<data.categoryAvailables.length; i++){
					 for(var k = 0; k<data.subCategoryAvailables.length; k++){
						efg = "<ul class=\"ml-menu font-list\" id='sideNavBarUl"+(Number(Number(i)) + (Number(1)))+"'>"
						 if(data.categoryAvailables[i].id === data.subCategoryAvailables[k].categoryAvailable.id){
							 cde = cde +"<li><a href="+data.subCategoryAvailables[k].subCategoryUrl+">"+data.subCategoryAvailables[k].subCategoryName+"</a></li>"
						 }
					 }
					 
					 if(cde !== ""){
						 abc = abc + "<li id='sideNavBarLi"+(Number(Number(i)) + (Number(1)))+"'><a href=\"javascript:void(0);\" id='sideNavBarLink"+(Number(Number(i)) + (Number(1)))+"' class=\"menu-toggle waves-effect waves-block\" onclick=\"addClass('"+(Number(Number(i)) + (Number(1)))+"',false)\"><img src=\"getImageRaw?id="+data.categoryAvailables[i].iconFile+"\" alt=\"\"/><span>"+data.categoryAvailables[i].categoryName+"</span> </a>";
						 abc = abc + efg + cde +"</ul></li>";
					 }else{
						 abc = abc + "<li id='sideNavBarLi"+(Number(Number(i)) + (Number(1)))+"'><a href=\"admin-dashboard\" id='sideNavBarLink"+(Number(Number(i)) + (Number(1)))+"'  class=\"waves-effect waves-block\" onclick=\"addClass('"+(Number(Number(i)) + (Number(1)))+"',true)\"><img src=\"getImageRaw?id="+data.categoryAvailables[i].iconFile+"\" alt=\"\"/><span>"+data.categoryAvailables[i].categoryName+"</span> </a>"; 
					 }
					 
					 cde ="";
					 
					 lengthLi = data.categoryAvailables.length;
				}
				
					removeLi(lengthLi);
					$("#sideNavUl").append(abc);
			
				
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
	for(var i = 0 ; i < Number(lengthLi) ; i++){
		$("#sideNavBarLi"+(Number(Number(i)) + (Number(1)))).remove();
		$("#sideNavBarUl"+(Number(Number(i)) + (Number(1)))).remove();
	}
}
function addClass(id, isonlyLi){
	$("#miscLi").addClass("active open toggled");
	$("#miscUl").attr("style","display:block");
	
	if(isonlyLi){
		sessionStorage.setItem("ulsId",id);
	}else{
		alert("In if");
		if(($("#sideNavBarLink"+id).hasClass("toggled"))){
			$("#sideNavBarLink"+id).removeClass("toggled");
			$("#sideNavBarUl"+id).attr("style","display:none");
		}else{
			
			if($("#sellerLinkLi").hasClass("toggled")){
				$("#sellerLinkLi").removeClass("toggled");
				$("#sellerUl").attr("style","display:none");
			}
			 for (var i =0; i < Number(lengthLi); i++){
				 if((i !== Number(Number(id) - Number(1)))){
					 if(($("#sideNavBarLink"+(Number(Number(i)) + (Number(1)))).hasClass("toggled"))){
							$("#sideNavBarLink"+(Number(Number(i)) + (Number(1)))).removeClass("toggled ");
							$("#sideNavBarLink"+(Number(Number(i)) + (Number(1)))).attr("style","display:none");
							
						}
				 }
				 else{
						$("#sideNavBarLink"+id).addClass("toggled");
						$("#sideNavBarUl"+id).attr("style","display:block");
					}
			}
			
		}
	}
	
}
</script>
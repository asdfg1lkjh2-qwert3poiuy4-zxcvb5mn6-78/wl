<c:choose>
		<c:when test="${sessionScope.firstLogin == false || sessionScope.categorySession == null}"> 
			<script type="text/javascript">
			var lengthLi;
			$.ajax({
				type : "GET",
				url : "admin-fetchAllCategorySubCategory",
				data : "",
				contentType : false,
				processData : false,
				success : function(data) {
					alert(JSON.stringify(data));
					if(data.status){
						</script>
						<script type="text/javascript">
						var abc = "";
						var cde = "";
						var efg = "";
						var i = Number(0);
						</script>
			<c:if test = "${sessionScope.categorySession != null }">
			<c:forEach items="${sessionScope.categorySession}" var="categoryList">
			<c:if test ="${categoryList.paidServiceTaken == 'Yes' || sessionScope.adminDetailsSession != null}">
			<c:if test ="${ sessionScope.subCategorySession !=null}">
			<c:forEach items="${sessionScope.subCategorySession}" var="subCategoryList">
					<script type="text/javascript">
						var categoryId = "${categoryList.id}";
											var subCategory = "${subCategoryList.categoryAvailable.id}";
											efg = "<ul class=\"ml-menu font-list\" id='sideNavBarUl"
													+ (Number(Number(i)) + (Number(1)))
													+ "'>"
											if (categoryId === subCategory) {
												var subCategoryName = "${subCategoryList.subCategoryName}"
												cde = cde + "<li><a href=${subCategoryList.subCategoryUrl} onclick=\"showSubLi('"+(Number(Number(i)) + (Number(1)))+"')\">"+ subCategoryName+ "</a></li>"
											} 
					</script>
				</c:forEach>
				</c:if>
				<script type="text/javascript">
					 var categoryName = "${categoryList.categoryName}";
					if(cde !== ""){
						abc = abc + "<li id='sideNavBarLi"+(Number(Number(i)) + (Number(1)))+"'><a href=\"javascript:void(0);\" id='sideNavBarLink"+Number(Number(i) + Number(1))+"' class=\"menu-toggle waves-effect waves-block\"\" onclick=\"addClassesss('"+(Number(Number(i)) + (Number(1)))+"',false)\"><img src=\"getImageRaw?id=${categoryList.iconFile}\" alt=\"\"/><span>"+categoryName+"</span> </a>"
						abc = abc + efg + cde +"</ul></li>";
					}else{
						abc = abc +"<li id='sideNavBarLi"+(Number(Number(i)) + (Number(1)))+"'><a href=\"admin-dashboard\" id='sideNavBarLink"+Number(Number(i) + Number(1))+"' class=\"waves-effect waves-block\" onclick=\"addClassesss('"+(Number(Number(i)) + (Number(1)))+"',true)\"><img src=\"getImageRaw?id=${categoryList.iconFile}\"/><span>"+categoryName+"</span> </a>"
					}
						cde = "";
						i = (Number(Number(i)) + (Number(1)));
				</script>
			</c:if>
			</c:forEach>
			<script type="text/javascript">
			lengthLi = "${fn:length(categoryList)}";
			</script>
			</c:if>
			<script type="text/javascript">
				$("#sideNavUl").append(abc);
			</script>
			<script type="text/javascript">
								}
							},
							error : function(e) {
							}
						});
			</script>
			<script type="text/javascript">
			function addClassesss(liId,isOnlyLi){
				
				if(isOnlyLi){
					sessionStorage.setItem("ulsId",liId);
				}else{
					if(liId === "sellerLi"){
						if($("#sellerLi").hasClass("active open")){
							$("#sellerLi").removeClass("active open");
						}else{
							if($("#dashBoardLi").hasClass("active open")){
								$("#dashBoardLi").removeClass("active open");
							}if($("#miscLi").hasClass("active open")){
								$("#miscLi").removeClass("active open");
							}
						}
					}else if(liId === "miscLi"){
						if($("#dashBoardLi").hasClass("active open")){
							$("#dashBoardLi").removeClass("active open");
						}
						if($("#sellerLi").hasClass("active open")){
							$("#sellerLi").removeClass("active open");
						}
					}
					else{
						if($("#sideNavBarLi"+liId).hasClass("active open")){
							$("#sideNavBarLi"+liId).removeClass("active open");
						}else{
							if($("#dashBoardLi").hasClass("active open")){
								$("#dashBoardLi").removeClass("active open");
							}if($("#sellerLi").hasClass("active open")){
								$("#sellerLi").removeClass("active open");
							}if($("#miscLi").hasClass("active open")){
								$("#miscLi").removeClass("active open");
							}
						}
					}
					for(var i =0; i< Number(11); i++){
						if((liId === "sellerLi") || (liId === "miscLi")){
							if($("#sideNavBarLi"+Number(Number(i) + Number(1))).hasClass("active open")){
								$("#sideNavBarLi"+Number(Number(i) + Number(1))).removeClass("active open");
							}
						}else{
							if(i !== Number(Number(liId) - Number(1))){
								if($("#sideNavBarLi"+Number(Number(i) + Number(1))).hasClass("active open")){
									$("#sideNavBarLi"+Number(Number(i) + Number(1))).removeClass("active open");
								}
							}
						}
					}
					
					if(liId === "dashBoardLi"){
						$("#dashBoarLi").addClass("active open");
					}else if(liId === "sellerLi"){
						if($("#sellerLinkLi").hasClass("toggled")){
							$("#sellerLi").addClass("active open");
						}else{
							$("#sellerLi").removeClass("active open");
						}
					}else if(liId === "miscLi"){
						if($("#miscLinkLi").hasClass("toggled")){
							$("#miscLi").addClass("active open");
						}else{
							$("#miscLi").removeClass("active open");
						}
					}else{
						if($("#sideNavBarLink"+liId).hasClass("toggled")){
							$("#sideNavBarLi"+liId).removeClass("active open");
						}else{
							$("#sideNavBarLi"+liId).addClass("active open");
						}
						
					}
				}
				 
			}
			
			$("#sellerLi").click(function (){
				addClassesss("sellerLi");
			});
			$("#miscLi").click(function (){
				addClassesss("miscLi");
			});
			
			function showSubLi(str){
			  sessionStorage.setItem("ulsId",str);
			}
			
			
			
			
			var subLiLengthSeller =$("ul#sellerUl li").length;
			for(var i =0; i< Number(subLiLengthSeller); i++){
				$("#showSubSellerLi"+Number(Number(i)+Number(1))).click(function(){
					showSubLi("sellerLi")
				});
			}
			
			var subLiLengthMisc = $("ul#miscUl li").length;
			for(var i =0; i< Number(subLiLengthMisc); i++){
				$("#showSubMiscLi"+Number(Number(i)+ Number(1))).click(function (){
					showSubLi("miscLi");
				});
			}
				$(document).ready(function(){
					var pageName = location.pathname.split("/");
					if(pageName[2] !== "admin-dashboard"){
						$("#dashBoardLi").removeClass("active open");
					}
					
					if(sessionStorage.getItem("ulsId") === "dashBoardLi"){
						$("#dashBoardLi").addClass("active open");
					}else if(sessionStorage.getItem("ulsId") === "sellerLi"){
					$("#sellerLi").addClass("active open");
					$("#sellerUl").attr("style","display:block");
				}else if(sessionStorage.getItem("ulsId") === "miscLi"){
					$("#miscLi").addClass("active open");
					$("#miscUl").attr("style","display:block");
				}else{
					$("#sideNavBarLi"+sessionStorage.getItem("ulsId")).addClass("active open");
					$("#sideNavBarUl"+sessionStorage.getItem("ulsId")).attr("style","display:block");
				}
				sessionStorage.removeItem("ulsId");

			});
			</script>
</c:when>
	</c:choose> 
	
<c:choose>
		<c:when test="${sessionScope.firstLogin == false || sessionScope.categorySession == null}"> 
			<script type="text/javascript">
			$.ajax({
				type : "GET",
				url : "admin-fetchAllCategorySubCategory",
				data : "",
				contentType : false,
				processData : false,
				success : function(data) {
					if(data.status){
						</script>
						<script type="text/javascript">
						var abc = "";
						var cde = "";
						var efg = "";
						var lengthLi;
						var i = Number(0);
						</script>
			<c:if test = "${sessionScope.categorySession != null }">
			<c:forEach items="${sessionScope.categorySession}" var="categoryList">
			<c:if test ="${ sessionScope.subCategorySession !=null}">
				<c:forEach items="${sessionScope.subCategorySession}"
					var="subCategoryList">
					<script type="text/javascript">
						var categoryId = "${categoryList.id}";
											var subCategory = "${subCategoryList.categoryId}";
											efg = "<ul class=\"ml-menu font-list\" id='ul"
													+ (Number(Number(i)) + (Number(1)))
													+ "'>"
											if (categoryId === subCategory) {
												var subCategoryName = "${subCategoryList.subCategoryName}"
												cde = cde
														+ "<li><a href=\"#\">"
														+ subCategoryName
														+ "</a></li>"
											} else {
												efg = "";
												cde = "";
											}
					</script>
				</c:forEach>
				</c:if>
				<script type="text/javascript">
					 var categoryName = "${categoryList.categoryName}";
					if(cde !== ""){
						abc = abc + "<li><a href=\"javascript:void(0);\" id='"+(Number(Number(i)) + (Number(1)))+"' class=\"menu-toggle waves-effect waves-block\"\"><img src=\"resources/images/tulip.png\" alt=\"\"/><span>"+categoryName+"</span> </a>"
						abc = abc + efg + cde +"</ul></li>";
					}else{
						abc = abc +"<li><a href=\"javascript:void(0);\" id='"+(Number(Number(i)) + (Number(1)))+"' class=\"waves-effect waves-block\" \"><img src=\"resources/images/tulip.png\" alt=\"\"/><span>"+categoryName+"</span> </a>"
					}
						lengthLi = "{fn:length(categoryList)}";
						i = (Number(Number(i)) + (Number(1)));
						</script>
			</c:forEach>
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
	
	</c:when>
	</c:choose> 
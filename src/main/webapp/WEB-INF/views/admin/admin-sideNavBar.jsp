<aside id="leftsidebar" class="sidebar"> 
    <!-- User Info -->
    <div class="user-info">
    	<c:choose>
    		<c:when test="${sessionScope.sellerDetailsSession != null}">
    		<div class="admin-image"> <img src="<c:out value="getImage?id=${sessionScope.sellerDetailsSession.sellerImg}"/>" class = "profile" alt=""></div>
        	<div class="admin-action-info"> <span>Welcome</span>
            <h3>${sessionScope.sellerDetailsSession.sellerFirstName} ${sessionScope.sellerDetailsSession.sellerLastName}</h3>
            <ul>
                <li><a data-placement="bottom" title="Go to Inbox" href="mail-inbox.html"><i class="zmdi zmdi-email"></i></a></li>
                <li><a data-placement="bottom" title="Go to Profile" href="admin-viewSellerProfile"><i class="zmdi zmdi-account"></i></a></li>                    
                <li><a href="javascript:void(0);" class="js-right-sidebar" data-close="true"><i class="zmdi zmdi-settings"></i></a></li>
                <li><a data-placement="bottom" title="Sign Out" href="signOut" ><i class="zmdi zmdi-sign-in"></i></a></li>
            </ul>
        </div>
    		</c:when>
    		<c:otherwise>
    		 <div class="admin-image"> <img src="<c:out value="${sessionScope.adminDetailsSession.imageName}"/>" alt=""></div>
        	 <div class="admin-action-info"> <span>Welcome</span>
             <h3>${sessionScope.adminDetailsSession.firstName} ${sessionScope.adminDetailsSession.lastName}</h3>	
    		<ul>
                <li><a data-placement="bottom" title="Go to Inbox" href="mail-inbox.html"><i class="zmdi zmdi-email"></i></a></li>
                <li><a data-placement="bottom" title="Go to Profile" href="profile.html"><i class="zmdi zmdi-account"></i></a></li>                    
                <li><a href="javascript:void(0);" class="js-right-sidebar" data-close="true"><i class="zmdi zmdi-settings"></i></a></li>
                <li><a data-placement="bottom" title="Sign Out" href="signOut" ><i class="zmdi zmdi-sign-in"></i></a></li>
            </ul>
        </div>
    		</c:otherwise>
    	</c:choose>
    </div>
    <!-- #User Info --> 
    <!-- Menu -->
    <div class="menu">
        <ul class="list" style="overflow: auto;" id="sideNavUl">
            <li class="header">MAIN NAVIGATION</li>
            <li class="active open" id="dashBoardLi"><a href="admin-dashboard"><i class="zmdi zmdi-home"></i><span>Dashboard</span></a></li>
			<c:choose>
    		<c:when test="${sessionScope.adminDetailsSession != null}">
			<li id="sellerLi"><a href="javascript:void(0);" id="sellerLinkLi" class="menu-toggle"><img src="resources/images/seller-ico.png" alt=""/><span>Seller Details</span> </a>
             <ul class="ml-menu font-list" id= "sellerUl">                        
                    <li><a href="admin-addEditSeller" id="showSubSellerLi1">Add Seller</a></li>
                    <li><a href="admin-viewSeller" id="showSubSellerLi2">View Seller</a></li>
                    <li><a href="deactivateSeller" id="showSubSellerLi3">Deactivate Seller</a></li>
                </ul>
            </li>
               
             <li id="miscLi"><a href="javascript:void(0);" id="miscLinkLi" class="menu-toggle"><img src="resources/images/seller-ico.png" alt=""/><span>Miscellaneous</span> </a>
                <ul class="ml-menu font-list" id="miscUl">                        
                    <li><a href="admin-addEditState" id="showSubMiscLi1" >Add & View State</a></li>
                    <li><a href="admin-addEditCity" id="showSubMiscLi2">Add & View City</a></li>
                    <li><a href="admin-addEditZipCode" id="showSubMiscLi3">Add & View ZipCode</a></li>
                    <li><a href="admin-addEditCategory" id="showSubMiscLi4">Add & View Category</a></li>
                    <li><a href="admin-addEditSubCategory" id="showSubMiscLi5">Add & View Sub Category</a></li>
                    <li><a href="admin-addEditOccasion" id="showSubMiscLi6" >Add & View Occasion</a></li>
                    <li><a href="admin-addEditPhotographyOccassion" id="showSubMiscLi7" >Add & View Photographer Occasion</a></li>
                    <li><a href="admin-addEditProductType" id="showSubMiscLi8">Add & View Product Type</a></li>
                    <li><a href="admin-addEditPhotographyType" id="showSubMiscLi9">Add & View Photography Type</a></li>
                    <li><a href="admin-addEditFoodType" id="showSubMiscLi10">Add & View Food Type</a></li>
                </ul>
            </li>
           </c:when>
           </c:choose>
            <!-- <li><a href="javascript:void(0);" class="menu-toggle"><img src="resources/images/tulip.png" alt=""/><span>Flourist</span> </a>
                <ul class="ml-menu font-list">                        
                    <li><a href="admin-addEditFlower">Add Flower</a></li> 
                    <li><a href="viewFlourist">View Flourist</a></li>
                    <li><a href="myProfile">Flourist Profile</a></li>
                </ul>
            </li>                
            <li><a href="javascript:void(0);" class="menu-toggle"><img src="resources/images/priest.png" alt=""/><span>Priest</span> </a>
                <ul class="ml-menu">
                    <li><a href="./addPriest">Add Priest</a></li>
                    <li><a href="./viewPriest">View Priest</a></li>     
                </ul>
            </li>
            <li><a href="javascript:void(0);" class="menu-toggle"><img src="resources/images/interlocking-rings.png" alt=""/><span>Jewellery</span> </a>
                <ul class="ml-menu">
                    <li><a href="./addJewellers">Add Jewellers</a></li>  
                    <li><a href="./viewJewellers">View Jewellers</a></li>   
                </ul>
            </li>
            <li><a href="javascript:void(0);" class="menu-toggle"><img src="resources/images/man-holding-shopping-basket.png" alt=""/><span>Grocery</span> </a>
                <ul class="ml-menu">
                    <li><a href="./addGroccers">Add Grocery Store</a></li> 
                    <li><a href="./viewGroccers">View Grocery Store</a></li>

                                           <li><a href="courses-info.html">Courses Info</a></li>
                </ul>
            </li>
            <li><a href="javascript:void(0);" class="menu-toggle"><img src="resources/images/wedding-invitation.png" alt=""/><span>Wedding Cards</span> </a>
                <ul class="ml-menu">

                    <li><a href="./addCardOwner">Add Card Owner</a></li>
                    <li><a href="./viewCardOwner">View Card Owner</a></li>
                </ul>
            </li>
            <li><a href="javascript:void(0);" class="menu-toggle"><img src="resources/images/delivery-truck.png" alt=""/><span>Transport</span> </a>
                <ul class="ml-menu">
                    <li><a href="./addTransporter">Add Transport</a></li>
                    <li><a href="./viewTransporter">View Tansporters</a></li>
                </ul>
            </li>
            <li><a href="javascript:void(0);" class="menu-toggle"><img src="resources/images/photo-camera.png" alt=""/><span>Photographer</span> </a>
                <ul class="ml-menu">
                    <li><a href="admin-addEditPhotographer">All Photographers</a></li>
                    <li><a href="./viewPhotographer">View Photographers</a></li>                       
                    <li><a href="./myProfile">Photographers Profile</a></li>
                </ul>
            </li>
            <li><a href="javascript:void(0);" class="menu-toggle"><img src="resources/images/city-hall-building-architecture.png" alt=""/><span>Wedding Hall</span> </a>
                <ul class="ml-menu">
                    <li><a href="admin-addEditHall">Add Wedding Hall</a></li>
                    <li><a href="./viewHalls">View Wedding Hall</a></li> 
                </ul>
            </li>
            <li><a href="javascript:void(0);" class="menu-toggle"><img src="resources/images/buffet.png" alt=""/><span>Catering</span></a>
                <ul class="ml-menu">
                    <li><a href="admin-addEditCaterer">Add Catterers</a></li>
                    <li><a href="addFood.php">Add Food</a></li>
                    <li><a href="#">All Catterers</a></li>       
                </ul>
            </li>
            <li><a href="javascript:void(0);" class="menu-toggle"><img src="resources/images/woman-hair.png" alt=""/><span>Beautician</span></a>
                <ul class="ml-menu">
                    <li><a href="./addBeautician">Add Beautician</a></li>
                    <li><a href="./viewBeautician">All Beauticians</a></li>                       
                    <li><a href="staffs-info.html">Staffs Profile</a></li>
                </ul>
            </li>
            <li><a href="javascript:void(0);" class="menu-toggle"><img src="resources/images/cooker.png" alt=""/><span>Cook</span></a>
                <ul class="ml-menu">
                    <li><a href="./addCulinarian">Add Culinarian</a></li>
                    <li><a href="./viewCulinarian">All Culinarians</a></li>                       
                    <li><a href="staffs-info.html">Staffs Profile</a></li>
                </ul>
            </li>
            <li><a href="javascript:void(0);" class="menu-toggle"><img src="resources/images/cooker.png" alt=""/><span>Crackers</span></a>
                <ul class="ml-menu">
                    <li><a href="./addCrackers">Add Cracker Store</a></li>
                    <li><a href="./viewCrackerStore">All Cracker Store</a></li>  
                </ul>
            </li> -->
        </ul>
    </div>
    <!-- #Menu -->
</aside>
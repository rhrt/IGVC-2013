
function ChangeChecked(oElements, bValue) {
	if (oElements) {
		for (var i = 0; i < oElements.length; i++) {
			oElements[i].checked = bValue;}
		oElements.checked = bValue;
	}
}

function SetFilter(){			
	var el = document.fmFilterSort.MaxPriceLevel;
	if (el){
	    if (0 == el.selectedIndex){
		    el.options[0].selected=true;			
	    }
	    else 	if (6 == el.selectedIndex){
		    el.options[5].selected=true;
		    el.options[0].selected=true;
		    }
		    else{
			    el.options[document.fmFilterSort.MaxPriceLevel.value/100 - 1].selected = true;
		    }
    }
	document.fmFilterSort.submit();
}

function ReferringSourceChecked() {
	var oReferringSourceCheckers = document.getElementsByName("ReferringSource");
	var bChecked = false;
						
	for (var i = 0; i < oReferringSourceCheckers.length; i++) {
		if (oReferringSourceCheckers[i].checked) {
			bChecked = true;
		};
	};
	
	if (oReferringSourceCheckers.length == 0) {
		bChecked = true;
	}

	return bChecked;
}

function ClearCart() {
	document.fmCart.Action.value="clear";
	document.fmCart.submit();        
}
function Remove() {
	document.fmCart.Action.value="remove";
	document.fmCart.submit();
}
function Recalculate() {
	document.fmCart.Action.value="recalculate";
	document.fmCart.submit();     
}
function Copy() {
	document.fmCart.Action.value='copy';
	document.fmCart.Path.value = "http://www.powerwerx.com/favorites.asp";
	document.fmCart.submit();        
}
function CopyAllFromFavorites() {
	document.fmCart.action="http://www.powerwerx.com/favorites.asp";
	document.fmCart.Action.value='copyall';
	document.fmCart.submit();        
}
function Checkout() {
	//if (ReferringSourceChecked()) {
		document.fmCart.action = "http://www.powerwerx.com/cart.asp";
		document.fmCart.Action.value='checkout';
		document.fmCart.submit();     
	//}
	//else {
	//	alert(GetResourceString(52497, 'Please specify, how did you hear about our company.'));
	//}

}
function ChangeBasket() {
	document.fmCart.Action.value="changebasket";
	document.fmCart.submit();     
}		

function SelectCountry() {	
	document.fmCountry.submit();     
}		


var sOrderID = '131366';
var sGroupID = '';
var bCheckoutSubmit = false;

function Save() {
    if(bCheckoutSubmit) return false;
	bCheckoutSubmit = true;
    document.fmCheckout.submit();
}
function Refresh() {
  document.fmCheckout.Action.value = 'refresh';
  document.fmCheckout.submit();
} 
function Recalculate() {
	document.fmCheckout.Action.value = 'recalculate';
	document.fmCheckout.submit();
}
function Print() {
	var sURL = 'vieworder.asp?ID=' + sOrderID + '&target=printer';
	document.open(sURL, "PrintOrder", "directories=no,height=600,width=800,location=no,menubar=yes,resizable=no,scrollbars=yes,toolbar=no");
}

function Copy(el, sPrefix) {
	if('empty' == el.value) return;
	el.form.Action.value = (('undefined' == typeof(sPrefix))?'':sPrefix) + 'copy';
    el.form.submit();
}					
function changeDiv(the_div,the_change) {
	if ((document.getElementById) || (document.all)) {
		var the_style = getStyleObject(the_div);
		if (the_style != false) {
			the_style.display = the_change;
		}
	}
}
function getStyleObject(objectId) {
	if (document.getElementById && document.getElementById(objectId)) {
		return document.getElementById(objectId).style;
	} else if (document.all && document.all(objectId)) {
		return document.all(objectId).style;
	} else {
		return false;
	}
}
function EnableRecurrenceType(){
    if (document.getElementById("Recurrence").checked == false) {
        document.getElementById("RecurrenceType").disabled = true;
    }else {
        document.getElementById("RecurrenceType").disabled = false;
    }
}
function ApplyCoupon(){
	document.fmCheckout.Action.value = 'recalculate';
	if(document.fmCheckout.StoreCredit) {document.fmCheckout.StoreCredit.value = 0;}
	document.fmCheckout.submit();
}

function ApplyStoreCredit(){
	document.fmCheckout.Action.value = 'recalculate';
	document.fmCheckout.StoreCredit.value = document.fmCheckout.StoreCreditValue.value;
	document.fmCheckout.submit();
}

function NewWallet(){
    find_object('Billing').style.display = 'none';
    find_object('Title').style.display = 'inline';
    find_object('Contact_FirstName').value = '';
    find_object('Contact_LastName').value = '';
    find_object('Contact_Company').value = '';
    find_object('Address_Address').value = '';
    find_object('Address_Address2').value = '';
    find_object('Address_City').value = '';
    find_object('Address_PostalCode').value = '';
    find_object('Contact_Phone').value = '';
    find_object('Contact_Email').value = '';

}

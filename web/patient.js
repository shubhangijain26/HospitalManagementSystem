	

	 function showAppointment(){
	 	document.getElementById("pDetails").style.display="none";
	 	document.getElementById("cSummaryId").style.display="none";
	 	document.getElementById("AppointmentForm").style.display="block";
	 	document.getElementById("EnquiryForm").style.display="none";
	 	document.getElementById("location").style.display="none";
	 	document.getElementById("DocDiv").style.display="none";
	 	document.getElementById("MedDiv").style.display="none";
	 	document.getElementById("MedInfo").style.display="none";
	 	
	 }

	  function showDashboard(){
	 	document.getElementById("pDetails").style.display="block";
	 	document.getElementById("cSummaryId").style.display="block";
	 	document.getElementById("AppointmentForm").style.display="none";
	 	document.getElementById("EnquiryForm").style.display="none";
	 	document.getElementById("location").style.display="none";
	 	document.getElementById("DocDiv").style.display="none";
	 	document.getElementById("MedDiv").style.display="none";
	 	document.getElementById("MedInfo").style.display="none";


	 }

	 function showEnquiry(){
	 	document.getElementById("pDetails").style.display="none";
	 	document.getElementById("cSummaryId").style.display="none";
	 	document.getElementById("AppointmentForm").style.display="none";
	 	document.getElementById("EnquiryForm").style.display="block";
	 	document.getElementById("location").style.display="none";
	 	document.getElementById("DocDiv").style.display="none";
	 	document.getElementById("MedDiv").style.display="none";
	 	document.getElementById("MedInfo").style.display="none";

	 }

	 function showLocation(){
	 	document.getElementById("pDetails").style.display="none";
	 	document.getElementById("cSummaryId").style.display="none";
	 	document.getElementById("AppointmentForm").style.display="none";
	 	document.getElementById("EnquiryForm").style.display="none";
	 	document.getElementById("location").style.display="block";
	 	document.getElementById("DocDiv").style.display="none";
	 	document.getElementById("MedDiv").style.display="none";
	 	document.getElementById("MedInfo").style.display="none";

	 }
	 function FindDoc(){
	 	document.getElementById("AppointmentForm").style.display="none";
	 	document.getElementById("EnquiryForm").style.display="none";
	 	document.getElementById("location").style.display="none";
	 	document.getElementById("DocDiv").style.display="block";
	 	document.getElementById("MedDiv").style.display="none";
	 	document.getElementById("pDetails").style.display="none";
	 	document.getElementById("cSummaryId").style.display="none";
	 	document.getElementById("MedInfo").style.display="none";

	 }
	  function FindMed(){
	 	document.getElementById("AppointmentForm").style.display="none";
	 	document.getElementById("EnquiryForm").style.display="none";
	 	document.getElementById("location").style.display="none";
	 	document.getElementById("DocDiv").style.display="none";
	 	document.getElementById("MedDiv").style.display="block";
	 	document.getElementById("pDetails").style.display="none";
	 	document.getElementById("cSummaryId").style.display="none";
	 	document.getElementById("MedInfo").style.display="none";

	 }

	   function showMedInfo(){
	 	document.getElementById("AppointmentForm").style.display="none";
	 	document.getElementById("EnquiryForm").style.display="none";
	 	document.getElementById("location").style.display="none";
	 	document.getElementById("DocDiv").style.display="none";
	 	document.getElementById("MedDiv").style.display="none";
	 	document.getElementById("pDetails").style.display="none";
	 	document.getElementById("cSummaryId").style.display="none";
	 	document.getElementById("MedInfo").style.display="block";
	 }


	 //for logging out
		function logoutModal(){
	      var lDiv=document.getElementById("logoutDivId");
	      var closeBtn=document.getElementById("closeBtn");
	      var yes=document.getElementById("Yes");
	      var no=document.getElementById("No");

	      lDiv.style.display="block";

	      closeBtn.onclick= function() {
	        lDiv.style.display="none";
	      }
	      yes.onclick = function(){
	        window.location.href = "main.html";
	      }
	      no.onclick= function(){
	        lDiv.style.display="none";
	      }
	      window.onclick= function(event) {
	        if(event.target== logoutDivId){
	          lDiv.style.display="none";
	        }
      }
  }

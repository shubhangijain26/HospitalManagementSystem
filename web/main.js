// Disable form submissions if there are invalid fields
(function() {
  'use strict';
  window.addEventListener('load', function() {
    // Get the forms we want to add validation styles to
    var forms = document.getElementsByClassName('needs-validation');
    // Loop over them and prevent submission
    var validation = Array.prototype.filter.call(forms, function(form) {
      form.addEventListener('submit', function(event) {
        if (form.checkValidity() === false) {
          event.preventDefault();
          event.stopPropagation();
        }
        form.classList.add('was-validated');
      }, false);
    });
  }, false);
})();

  window.onscroll= function() {
    Scroll()
  };

  function Scroll(){
    if(document.body.scrollTop > 400 || document.documentElement.scrollTop>400){
      document.getElementById("awd1").className="SlideDown";
      document.getElementById("awd3").className="SlideDown";
      document.getElementById("awd2").className="SlideUp";
    }
    if(document.body.scrollTop > 500 || document.documentElement.scrollTop>500){
      document.getElementById("location").className="ZoomOut";
    }
     if(document.body.scrollTop > 500 || document.documentElement.scrollTop>500){
      document.getElementById("location").className="ZoomOut";
    }    
    if(document.body.scrollTop > 600 || document.documentElement.scrollTop>600){
      document.getElementById("f1").className="SlideDown";
      document.getElementById("f3").className="SlideDown";
      document.getElementById("f2").className="SlideUp";
    }
  }

  //show EnquiryForm
  function showEnquiry(){
    document.getElementById("EnquiryForm").style.display="block";
    document.getElementById("AppointmentForm").style.display="none";
    // document.getElementById("location").style.display="none";
    document.getElementById("DocDiv").style.display="none";
    document.getElementById("MedDiv").style.display="none";
  }

   //show AppointmentForm
  function showAppointment(){
    document.getElementById("AppointmentForm").style.display="block";
    document.getElementById("EnquiryForm").style.display="none";
    // document.getElementById("location").style.display="none";
    document.getElementById("DocDiv").style.display="none";
    document.getElementById("MedDiv").style.display="none";
  }

  //Find Doc from backend
   function FindDoc(){
    document.getElementById("DocDiv").style.display="block";
    document.getElementById("MedDiv").style.display="none";
    document.getElementById("demo").style.display="none";
    document.getElementById("EnquiryForm").style.display="none";
    document.getElementById("AppointmentForm").style.display="none";
   }

    function FindMed(){
    document.getElementById("DocDiv").style.display="none";
    document.getElementById("MedDiv").style.display="block";
    document.getElementById("demo").style.display="none";
    document.getElementById("EnquiryForm").style.display="none";
    document.getElementById("AppointmentForm").style.display="none";
   }

    function GoHome(){
    document.getElementById("DocDiv").style.display="none";
    document.getElementById("MedDiv").style.display="none";
    document.getElementById("demo").style.display="block";
     document.getElementById("EnquiryForm").style.display="none";
    document.getElementById("AppointmentForm").style.display="none";
   }
/**
 * 
 */
function validateform()
{
	var name=document.form1.name.value
	var pass=document.form1.passwords.value
	var email=document.form1.email.value
	//var reg = /^([\w-\.]+@(?!gmail.com)(?!yahoo.com)(?!hotmail.com)(?!yahoo.co.in)(?!aol.com)(?!abc.com)(?!xyz.com)(?!pqr.com)(?!rediffmail.com)(?!live.com)(?!outlook.com)(?!me.com)(?!msn.com)(?!ymail.com)([\w-]+\.)+[\w-]{2,4})?$/;
	if(name==null||name=="")
		{
		alert("name cant not be blank")
		return false;
		}
	 if(pass.length<6)
		{
		alert("Password must be at least 6 characters long.");  
		  return false;
		}
	 if(email.match(/^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/))
		 {
		 return 0;
		 }
	 else
		 {
		 alert("enter a valid email id");
		 }
}
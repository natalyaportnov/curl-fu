@Grapes([
	@Grab("org.codehaus.geb:geb-core:0.7.0"),
	@Grab("org.seleniumhq.selenium:selenium-firefox-driver:2.21.0"),
	@Grab("org.seleniumhq.selenium:selenium-support:2.21.0")])

Import geb.Browser
 
// ... some examples ...
/*
Browser.drive {
	go "http://myapp.com/login"

	assert $("h1").text() == "Please Login"

	$("form.login").with {
		username = "admin"
		password = "password"
		login().click()
	}

	assert $("h1").text() == "Admin Section"
}
*/

Browser.drive {
	go 'https://www.ncs.umn.edu/manageLists/list'

	waitFor { title == "Sign In: University of Minnesota" }

	$("#lform").with {
		j_username = "username"
		j_password = "somepassword"
		sleep 4000
		$("input", type:"submit").click()
	}

	waitFor { title == "Mailing Lists" }

	go '/manageLists/show/NCS_UMN_Info'

	assert $("span.fullName", 0).text() == "Amy Arellano"

}


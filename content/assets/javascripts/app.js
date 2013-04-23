//= require lib/czbox2.js

if (!Modernizr.svg) {
    $("#logo").attr("src","/assets/images/logo_fallback.png");
}

$(document).ready(function() {
	CzBox.create();
});
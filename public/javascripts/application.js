// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$(document).ready(function() {
	var title = $('#title');
	var colorChange = function() {
		title.css('color', '#'+Math.floor(Math.random()*16777215).toString(16));
	}
	setInterval(colorChange, 100)
});
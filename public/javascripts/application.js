// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
/*
window.onload = function() {
	
	google.load("elements", "1", {packages: "keyboard"});
	
	function onLoad() {
	  var content = document.getElementById('content');
	  // Create the HTML for out text area
	  content.innerHTML = '<div><i>(Scroll down)</i> ' +
	                      'You can click the buttons on the onscreen ' +
	                      'keyboard to type Russian. You can also type Russian '+
	                      'with your keyboard. When you need to type English, ' +
	                      'please click the [-] button to minimize the keyboard.' +
	                      '</div><textarea id="t1" cols="100" rows="5"></textarea>';
	
	  var kbd = new google.elements.keyboard.Keyboard(
	      [google.elements.keyboard.LayoutCode.ETHIOPIC],
	      ['t1']);
	}
	
	google.setOnLoadCallback(onLoad);
};
*/

function temVote(voteUrl, id){
	$.ajax({
		url: voteUrl,
		dataType: 'json',
		success: function(data){
			$('#yecount_' + id).text(data["ye"]);
			$('#necount_' + id).text(data["ne"]);
			$('#yenediff_' + id).text(data["diff"]);
		}
	});
}
		
function temReveal(sender) {
	// first fade out knowtheend?
	$(sender).fadeOut(100);
	$(sender).siblings('#misale').fadeIn(200);
	$(sender).siblings('#illustration').fadeIn(200);
}
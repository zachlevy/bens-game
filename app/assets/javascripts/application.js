// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require turbolinks
//= require_tree .

$(document).ready(function () {
	console.log("application.js ready!");
	askQuestion();
});
var globalTotal = 10;
var globalCounter = globalTotal;
var globalTimer = window.setInterval(function(){
	// every 1s
	globalCounter -=1;
	$(".timer-text").html(globalCounter + "s");
	updateProgress(globalCounter, globalTotal);
	if (globalCounter <= 0) {
		console.log("cue suspense");
		suspense();
	}
}, 1000);

function updateProgress (counter, total) {
	percentage = Math.round(counter * 100 / total);
	$(".progress-bar").css("width", percentage + "%");
}

function hideAll () {
	$(".question-type-row").addClass("hidden");
	$(".question-row").addClass("hidden");
	$(".answer-row").addClass("hidden");
	$(".progress-row").addClass("hidden");
	$(".timer-row").addClass("hidden");
	$(".players-row").addClass("hidden");
	$(".game-select-row").addClass("hidden");
	$(".score-wrap").addClass("hidden");
	$(".pseudo-checkbox-wrap").addClass("hidden");
}

function askQuestion () {
	console.log("askQuestion");
	hideAll();
	$(".question-type-row").removeClass("hidden");
	$(".question-row").removeClass("hidden");
	$(".progress-row").removeClass("hidden");
	$(".timer-row").removeClass("hidden");
	$(".players-row").removeClass("hidden");
	$(".score-wrap").removeClass("hidden");
}

function suspense () {
	$(".players-row").removeClass("hidden");
	$(".timer-text").html("Time Up!");
	clearInterval(globalTimer);
	window.setTimeout(function(){
		// wait 3s
		console.log("3 seconds past timer");
		showAnswer();
	}, 5000);
}

function showAnswer () {
	console.log("showAnswer");
	$(".progress-row").addClass("hidden");
	$(".timer-row").addClass("hidden");
	$(".answer-row").removeClass("hidden");
	$(".score-wrap").addClass("hidden");
	$(".pseudo-checkbox-wrap").removeClass("hidden");
}





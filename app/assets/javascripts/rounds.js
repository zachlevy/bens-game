$(document).ready(function () {
	console.log("application.js ready!");
	// ready
	console.log($("#new-round").html());
	if($("#new-round").html() === "true") {
		// start the flow
		askQuestion();
		// speak the question type
		speak($(".question-type").html());
		// speak the question text
		window.setTimeout(function () {
			speak($(".question-text").html());
		}, 3500);
		// prefill answer json
		updateAnswers();
		// when a pseudo-checkbox is clicked on
		$(".pseudo-checkbox").click(function () {
			console.log("pseudo-checkbox clicked");
			// reset array
			if ($(this).hasClass("correct")) {
				// not correct
				$(this).removeClass("correct");
				$(this).removeClass("checked");
			} else {
				// correct
				$(this).addClass("correct");
				$(this).addClass("checked");
			}
			updateAnswers();
		});
	} else {
		console.log("not new round page");
	}
});

// check answers
function updateAnswers () {
	$("#answers-input").val("[]");
	$.each($(".pseudo-checkbox"), function (index, answer) {

		if ($(this).hasClass("correct")) {
			correct = true;
		} else {
			correct = false;
		}
		// id in form of answer-id
		user = $(this).attr("data-user");
		console.log("for each checkbox");
		addAnswer(user, correct);
	});
}

// timer global
var globalTotal = 15;
var globalCounter = globalTotal;
var globalTimer = window.setInterval(function(){
	// every 1s
	globalCounter -=1;
	if (globalCounter < 4 && globalCounter > 0) {
		speak(globalCounter);
	}
	$(".timer-text").html(globalCounter + "s");
	updateProgress(globalCounter, globalTotal);
	if (globalCounter <= 0) {
		console.log("cue suspense");
		suspense();
	}
}, 1000);

// update progress bar
// takes in counter and total
function updateProgress (counter, total) {
	percentage = Math.round(counter * 100 / total);
	$(".progress-bar").css("width", percentage + "%");
}

// hides all rows
function hideAll () {
	$(".question-type-row").addClass("hidden");
	$(".question-row").addClass("hidden");
	$(".answer-row").addClass("hidden");
	$(".progress-row").addClass("hidden");
	$(".timer-row").addClass("hidden");
	$(".players-row").addClass("hidden");
	//$(".game-select-row").addClass("hidden");
	$(".score-wrap").addClass("hidden");
	$(".pseudo-checkbox-wrap").addClass("hidden");
}

// flow ask question
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

// flow show suspense
function suspense () {
	$(".players-row").removeClass("hidden");
	$(".timer-text").html("Time's Up!");
	clearInterval(globalTimer);
	speak("Time's up!");
	window.setTimeout(function(){
		// wait 3s
		console.log("3 seconds past timer");
		showAnswer();
	}, 3000);
}

// flow show the answer
function showAnswer () {
	console.log("showAnswer");
	$(".progress-row").addClass("hidden");
	$(".timer-row").addClass("hidden");
	$(".answer-row").removeClass("hidden");
	$(".score-wrap").addClass("hidden");
	$(".pseudo-checkbox-wrap").removeClass("hidden");
	// speak the question text
	window.setTimeout(function () {
		speak("The Correct Answer is: ..." + $(".answer-text").html());
	}, 1000);
}

// add an answer to the answer input
// takes in a user id and a boolean
function addAnswer (user, correct) {
	answer = $("#answers-input").val();
	answer = jQuery.parseJSON(answer);
	data = {
		"user" : user,
		"correct" : correct
	};
	answer_index = $.inArray(data, answer);
	answer.push(data);
	answer = JSON.stringify(answer);
	$("#answers-input").val(answer);
	console.log("answer: " + answer);
}

// speak text in the speak-this class
function speak (text) {
	console.log("text: " + text);
	var msg = new SpeechSynthesisUtterance(text);
	window.speechSynthesis.speak(msg);
}

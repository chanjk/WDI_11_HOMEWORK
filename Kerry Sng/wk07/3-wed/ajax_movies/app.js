window.onload = function() {
var searchForm = document.querySelector('form')
var result = document.querySelector('container')
searchForm.addEventListener('submit', function() {
// console.log("hello");
var movieTitle = document.getElementById('movieSearch').value;
// console.log(movieTitle);
var sURL = 'https://www.omdbapi.com/?s=' + movieTitle + "&plot=short&r=json";
$.ajax({
		method: 'GET',
		url: sURL,
		success: function(results){
      var movies = results.Search;
      for(var i = 0; i <= movies.length; i++){
        result.append('<li> <img src=' + movies[i].Poster + '/></li>' +
      	'<li>' + movies[i].Title + '</li>' +
      	'<li>' + movies[i].Type + '</li>' +
      	'<li>' + movies[i].Year + '</li>');
}
		},
	});
});
};

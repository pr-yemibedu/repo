function l(s) {
  if ( typeof( document ) == "undefined" ) { // DOM not availaable (not running in browser)
    print(s);
  } else { // running in browser
    var e = document.createElement('div');
    e.innerHTML = s + "<hr>";
    document.body.appendChild(e);
  }
}

function ShowFunctionName() {
	l(arguments.callee.name);
}

ShowFunctionName();

function addn(n) {
	return function(a) {
		return a + n;
	}
}

var add5 = addn(5);
l( add5(10) ); // 15

// define function and call it
( function() {
	l("called");
})();


function A() {}
A.prototype = {
	SayHello: function() {
		l("hello");
	}
}

var a = new A;
a.SayHello();


// execute JavaScript code in a string
var b;
eval("b = 1+1");
l("b = " + b);
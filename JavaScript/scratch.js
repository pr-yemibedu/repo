function l(s) {
  if ( typeof( document ) == "undefined" ) { // DOM not availaable (not running in browser)
    print(s);
  } else { // running in browser
    var e = document.createElement('div');
    e.innerHTML = s + "<hr>";
    document.body.appendChild(e);
  }
}

l( ["1", "2", "3"].join(',') );
l( [].join(',') );
l("after");
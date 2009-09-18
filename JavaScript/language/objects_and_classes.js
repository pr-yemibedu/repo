
  // logging
  function l(s) {
    if ( typeof( document ) == "undefined" ) { // DOM not availaable (not running in browser)
      print(s);
    } else { // running in browser
      var e = document.createElement('div');
      e.innerHTML = s + "<hr>";
      document.body.appendChild(e);
    }
  }
  
  function Circle(r) {
    this.r = r;
  }
  
  // class property
  Circle.PI = 3.14;
  
  // class method
  Circle.max = function(a,b) {
    if (a.r > b.r) return a;
    else return b;
  }    
  
  // instance property
  Circle.prototype.pi = 3.14; // all Cirlce instances will contain the pi property
  
  //instance method
  Circle.prototype.area = function() {
    return Circle.PI * this.r * this.r;
  }
  
  var c = new Circle(2);
  l( "Circle.PI = " + Circle.PI ); // class property 
  l( "Circle.max( 1, 2 ) = " + Circle.max( 1, 2 ) ); // class method
  l( "c.pi = " + c.pi ); // instance property
  l( "c.area() = " + c.area() ); //instance method
  
  function EnhancedCircle(r) {
    this.r = r;
  }
  
  // inheritance
  EnhancedCircle.prototype = new Circle(0); // inherit all instance properties & methods from Circle
  EnhancedCircle.prototype.newArea = function() {
    return this.r * this.r * this.r;
  }
  
  var ec = new EnhancedCircle(4);
  l( "ec.area() = " + ec.area() );
  l( "ec.newArea() = " + ec.newArea() );
  
  var Foo = { // object declaration using JSON syntax
    text: "Hello" // instance property
    ,
    bar: function() { // instance method
      l("Foo.bar() = " + this.text);
    }
  }
  
  Foo.bar();
  
  // **************************************************************************
  function Person( name ) {
    this.Name = name;
  }
  
  // class-like declarations using object literal syntax
  Person.prototype = {
    Name: "",
    toString: function() {
      return this.Name;
    }
  }              
  
  var p1 = new Person("Brian Pfeil");
  l( "p1.toString() = " + p1.toString() );
  
  var p2 = new Person("Tricia Pfeil");
  l( "p2.toString() = " + p2.toString() );    
  
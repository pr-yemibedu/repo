function p(s) {
	print(s);
}

load("MochiKit 1.3.1/lib/MochiKit/Base.js");
load("MochiKit 1.3.1/lib/MochiKit/Logging.js");

p( repr([1,2,3]) );

var a = {
	one: function() { return "one"; }
}
var b = {
	two: function() { return "two"; }
}

p( repr(a) );
p( repr(b) );

// add a's properties to b
update(b, a);
p( b.one() );
p( b.two() );

p( repr( items(this).sort() ) );

p( serializeJSON( {a: [1,2,3], b: "hello" } ) );


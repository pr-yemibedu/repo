(* example of comments in ML *)

(* simple hello world *)
"Hello World";

(* adding *)
5+5;

(* functions - fun <fun_name> <parameter> = <expression>; *)

fun square x = x*x;
square 2;

fun strcat(s1,s2)  = s1^s2;
strcat("Hello ","world");

(* string manipulation *)

(* start at the 6th char (0 based indexing) and get the next 5 chars *)
substring("Brian Pfeil", 6, 5);

(* size (length) of string *)
size "123456";

(* tuples - can contains different types *)
("Car", 1, 2.3, true, #"a");
((1,2),(3,4));

(* lists - single types only in list *)
[1,2,3,4,5];
["one","two","three","four","five"];
[#"a",#"b",#"c"];
[true,false,true,true];
[(1,2),(3,4),(5,6)];

nil; (* [] *)
1::nil; (* [1] *)
1::[2,3,4]; (* [1,2,3,4] *)
[1,2,3]@[4,5,6]; (* [1,2,3,4,5,6] *)
3::(2::(1::nil)); (* [3,2,1] *)

(* pattern matching *)
val (a,b) = (1,2);
val ((a,b),(c,d)) = ((1, 2.2),("abc",#"a"));
val x::xs = [1,2,3,4,5];

(* function composition *)
val first = hd o explode;
val second = hd o tl o explode;

(* function mapping *)
val words = ["one", "two", "three"];
map size words;

(* program control *)
if 1<2 then "less" else "greater";

(* specifying type of variable *)
val pair : int * int = (1+1, 2+2);

(* local variable and function *)
let
    val num = 9;
    fun addone x = x + 1;
in
    (* function "addone" and "num" only visible between "in" and "end" *)
    addone(num)
end;

(* case expression *)
case 1<2 of
    true =>
	"TRUE"
  | false =>
	"FALSE";

(* matches *)
val rec reverse = fn
    nil =>
	nil
  | x::xs =>
	reverse(xs) @ [x];
	
reverse(explode("a man a plan a canal panama"));

type hyperlink = { protocol : string, address : string, display : string };

val google : hyperlink = {protocol="http", address="www.google.com", display="google"};
val {protocol=proto,address=addr,display=disp} = google;

(* only access the pieces we want *)
(* rest of the list *)
val _::xs = [1,2,3,4];

(* 1st member of tuple *)
val (x,_) = ("Brian","Pfeil");



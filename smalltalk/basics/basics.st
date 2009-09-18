#! /bin/sh

"exec" "gst" "-f" "$0" "$@"

'hello world' printNl. "print to stdout"

"if conditions"
true ifTrue: [ 'Hello, world!' printNl ].
false ifTrue: [ 'Hello, world!' printNl ].
true ifFalse: [ 'Hello, world!' printNl ].
false ifFalse: [ 'Hello, world!' printNl ].

"iteration"
1 to: 20 do: [:x | x printNl ].
1 to: 20 by: 2 do: [:x | x printNl ].

i := Interval from: 5 to: 10.
i do: [:x | x printNl].
i := (Interval from: 5 to: 10 by: 2).
i do: [:x| x printNl].

"Arrays"
array := Array new:5. "create new array with 5 elements"
array at: 1. "return element at index 1. small talk arrays are indexed starting at 1"
array at: 1 put: 99. "put 99 at index 1 in the array"
array printNl. "print the array to stdout"

"Sets"
set := Set new. "create new Set"
set add: 1. set add: 2. set add: 3. "Add 1, 2, and 3 to set"
set add: 3; add: 4; add: 5. "shorform for adding many elements to set"
set remove: 3. "remove 3 from set"
set includes: 1. "return true if 1 is in set; otherwise false"
set printNl. "Print set to stdout"

"Dictionaries"
dictionary := Dictionary new.
dictionary at: 'One' put: 1.
dictionary at: 'Two' put: 2.
dictionary at: 1 put: 'One'.
dictionary at: 2 put: 'Two'.
dictionary printNl.
dictionary! "deletes the dictionary variable"
dictionary printNl.

Integer comment printNl.

"create snapshot of current state to image file"
"ObjectMemory snapshot: '/Users/brianpfeil/Temp/smalltalk_image.im'."

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

blocks := Dictionary new.

blocks at:'output' put: [
    'hello world' printNl. "print to stdout"
    Transcript show:'hello transcript'. "Transcript send it's output to stdout in this case"
].

blocks at:'if conditions' put: [
    true ifTrue: [ 'Hello, world!' printNl ].
    false ifTrue: [ 'Hello, world!' printNl ].
    true ifFalse: [ 'Hello, world!' printNl ].
    false ifFalse: [ 'Hello, world!' printNl ].
].

blocks at:'iteration' put: [
    1 to: 20 do: [:x | x printNl ].
    1 to: 20 by: 2 do: [:x | x printNl ].

    i := Interval from: 5 to: 10.
    i do: [:x | x printNl].
    i := (Interval from: 5 to: 10 by: 2).
    i do: [:x| x printNl].
].

blocks at: 'arrays' put: [
    array := Array new:5. "create new array with 5 elements"
    array at: 1. "return element at index 1. small talk arrays are indexed starting at 1"
    array at: 1 put: 99. "put 99 at index 1 in the array"
    array printNl. "print the array to stdout"
    
    #(1 2 3) printNl. "array literal"
    #(1 $2 '3') printNl. "array literals"
].

blocks at: 'sets' put: [
    set := Set new. "create new Set"
    set add: 1. set add: 2. set add: 3. "Add 1, 2, and 3 to set"
    set add: 3; add: 4; add: 5. "shorform for adding many elements to set"
    set remove: 3. "remove 3 from set"
    set includes: 1. "return true if 1 is in set; otherwise false"
    set printNl. "Print set to stdout"
].

blocks at: 'dictionaries' put: [
    dictionary := Dictionary new.
    dictionary at: 'One' put: 1.
    dictionary at: 'Two' put: 2.
    dictionary at: 1 put: 'One'.
    dictionary at: 2 put: 'Two'.
    dictionary printNl.
    dictionary printNl.
].

blocks at: 'comments' put: [
    Integer comment printNl.
].

blocks at: 'streams' put: [
    a := Array new: 10.
    a at: 4 put: 1234.
    a at: 9 put: 5678.
    s := ReadWriteStream on: a.
    s inspect.
    s position: 1. s inspect.
].

"create snapshot of current state to image file"
"ObjectMemory snapshot: '/Users/brianpfeil/Temp/smalltalk_image.im'."


blocks at: 'blocks' put: [
    plusOne := [ :x| x + 1]. "Create block that takes an argument and adds one to it"
    (plusOne value: 6) printNl. "6 gets bound to the :x argument and added to 1"

    [
        f := [ :n | n + 1 ].
        (f value: 8) printNl. 
    ] value.
].

blocks keysAndValuesDo: [ :aKey :aValue |
    ('--- ', aKey, ' ---') printNl.
    aValue value.
    printNl.
].

Object subclass: #Person
  instanceVariableNames: 'name age'
  classVariableNames: ''
  poolDictionaries: ''
  category: 'Person'
!

Person comment:
'I represent a Person'!

!Person class methodsFor: 'basics'!

name: aName age: anAge
  ^self new name: aName; age: anAge 
!

maxAge
  "Maximum age of a person"
  ^100
!

maxHeight
  "Maximum height of a person"
  ^8
! !

!Person methodsFor: 'accessing'!

name: aName
  "set name"
  name := aName
!

age: anAge
  "set age"
  age := anAge
!

name
  "return name"
  ^name
!

age
  "return age"
  ^age
! !

!Person methodsFor: 'Printing'!

printOn: aStream
  aStream nextPutAll: 'Name: '.
  self name printOn: aStream.
  aStream nextPut: $,.
  aStream nextPutAll: 'Age: '.
  self age printOn: aStream.
! !

p := Person name:'Brian Pfeil' age:30.
p printNl.


"create snapshot of current state to image file"
"ObjectMemory snapshot: '/Users/brianpfeil/Temp/smalltalk_image.im'."

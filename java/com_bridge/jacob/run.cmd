@echo on
%~d0
cd %~d0%~p0
regsvr32 /s MyTest.dll
javac -classpath ".;jacob.jar" CreateWordDoc.java
del worddoc.doc
java -classpath ".;jacob.jar" CreateWordDoc %~p0\worddoc.doc

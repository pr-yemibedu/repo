#!/bin/sh
APP_NAME=EmptyActionScriptApplication
mxmlc -debug=true $APP_NAME.as && echo continue | fdb $APP_NAME.swf 
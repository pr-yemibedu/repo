/*
This is the minimal amount of code for a pure ActionScript flash application

To compile (requires Flex SDK which includes the command line compiler tools)
  mxmlc -debug=true EmptyActionScriptApplication.as
which creates
  EmptyActionScriptApplication.swf
  
To debug (requires Flex SDK which includes the command line debug tools)
 fdb EmptyActionScriptApplication.swf
 
The flash app won't run right away.  You type "continue" then <enter> at the fdb shell prompt to start the app
*/
package {
    import flash.display.Sprite;

    public class EmptyActionScriptApplication extends Sprite
    {
        public function EmptyActionScriptApplication()
        {

        }
    }
}

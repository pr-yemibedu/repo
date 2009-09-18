// this requires the JSON.Framework to be installed / referenced when compiling
//Framework available at http://code.google.com/p/json-framework (as of 2008-05-05)

#import <Foundation/Foundation.h>
#import <JSON/JSON.h>

int main (int argc, const char * argv[]) {
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

	NSDictionary *dict = [NSDictionary dictionaryWithObjectsAndKeys:
    [NSString stringWithString:@"Brian Pfeil"], @"Name",
    [NSNumber numberWithInt:30], @"Age",
    nil];	
  
  // get JSON string representation of dict
  NSString *jsonString = [dict JSONRepresentation];
  
  // parse JSON string representation into a dictionary
  NSDictionary *dict2 = [jsonString JSONValue];
  
  NSLog(@"jsonString = %@\ndict2 = %@", jsonString, dict2);
  
  [pool drain];
  return 0;
}
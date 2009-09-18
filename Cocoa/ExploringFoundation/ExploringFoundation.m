#import <Foundation/Foundation.h>
#import <WebKit/WebKit.h>

void dictionaryExamples() {
	NSDictionary *dict = [NSDictionary dictionaryWithObjectsAndKeys:
    [NSString stringWithString:@"Brian Pfeil"], @"Name",
    [NSNumber numberWithInt:30], @"Age",
    nil];	
  
  NSString *path = [NSString stringWithString:@"dict.plist"];
  
  // writes out a property list representation (xml) to the file
  [dict writeToFile:path atomically:YES];
  
  // read dictionary from file
  NSDictionary *dict2 = [NSDictionary dictionaryWithContentsOfFile:path];
  
  // iterate over the keys in the dictionary
  for (id key in dict2)
  {
    NSLog(@"key: %@, value: %@", key, [dict2 objectForKey:key]);
  }
  
}

void fileManagerExamples() {
  NSError *err;
  NSString *path = [NSString stringWithString:@"a.txt"];
  NSFileManager *fileManager = [NSFileManager defaultManager];
  
  // create temporary file
  [path writeToFile:path atomically:YES encoding:NSUTF8StringEncoding error:&err];
  
  // check for existence of file
  if ([fileManager fileExistsAtPath:path]) {
    NSLog(@"File %@ exists", path);
  }
  
  // read file contents
  NSData *fileContents = [fileManager contentsAtPath:path];
  
  // convert file contents to string
  NSString *fileContentsAsString = [[NSString alloc] initWithData:fileContents encoding:NSUTF8StringEncoding];
  NSLog(@"fileContentsAsString = %@", fileContentsAsString);
}
  
void urlExamples() {
	NSString *urlContents = [[NSString alloc] initWithContentsOfURL:[[NSURL alloc] initWithString:@"http://www.google.com"]];
	NSLog(@"%@", urlContents);
}

int main (int argc, const char * argv[]) {
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
  
  //dictionaryExamples();
  //fileManagerExamples();
  //urlExamples();
  
  [pool drain];
  return 0;
}

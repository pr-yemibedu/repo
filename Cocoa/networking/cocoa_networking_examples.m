#import <Foundation/Foundation.h>

int main() {
  NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

  NSString *hostName = [[NSHost currentHost] name];
  NSLog(@"%@\n", hostName);

  NSArray *names = [[NSHost hostWithName:@"www.google.com"] names];
  NSLog(@"%@\n", names);

  [pool release];

  return 0;
}

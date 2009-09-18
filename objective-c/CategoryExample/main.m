#import <Foundation/Foundation.h>

@interface Person : NSObject {
  NSString *name;
}

  -(NSString*)name;
  -(void)setName:(NSString *)newName; 
@end

@implementation Person : NSObject
  -(NSString *)name{ return name; }
  -(void)setName:(NSString *)newName {
    [name release];
    [newName retain];
    name = newName;
  }
@end

int main(void)
{
  Person *p = [[Person alloc] init];
  [p setName:@"Brian Pfeil"];
  NSLog(@"%@", [p name]);
  [p release];
  return 0;
}

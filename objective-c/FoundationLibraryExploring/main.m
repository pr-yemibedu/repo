#import <stdio.h>
#import <Foundation/Foundation.h>

void stringExamples() {
  NSString *name = @"Brian Pfeil";
  NSLog(@"NSLog test. name = %@", name);

  // get the cstring representation (char*)
  printf("name = %s\n", [name cString]);
}

void arrayExamples() {
  NSArray *names;
  names = [NSArray arrayWithObjects: @"Nicola", @"Margherita",
                                     @"Luciano", @"Silvia", nil];

  // iterate over array by index
  int i;
  int count = [names count];
  for(i = 0; i < count; i++) {
    NSLog(@"%@", [names objectAtIndex: i]);
  }

  // iterate over array with enumerator
  NSEnumerator *enumerator;
  NSObject *obj;
  enumerator = [names objectEnumerator];
  while((obj = [enumerator nextObject]) != nil) {
    NSLog(@"%@", obj);
  }

}

void mutableArrayExamples() {
  NSMutableArray *array;
  array = [NSMutableArray new];

  // add objects
  [array addObject: @"brian"];
  [array addObject: @"pfeil"];

  // inser object
  [array insertObject: @"michael" atIndex: 1];

  //remove object
  [array removeObjectAtIndex: 0];

  NSLog(@"%@", array);
}

int main() {
  NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
  stringExamples();
  arrayExamples();
  mutableArrayExamples();
  [pool release];
  return 0;
}

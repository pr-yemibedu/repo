#import <Foundation/Foundation.h>

@interface Song : NSObject {
  NSString *name;
  NSString *artist;
}
- (id)initWithName:(NSString *)newName artist:(NSString *)newArtist;
- (NSString *)name;
- (void)setName:(NSString *)newName;
- (NSString *)artist;
- (void)setArtist:(NSString *)newArtist;
@end

@implementation Song

- (id)init
{
  return [self initWithName:nil artist:nil];
}

- (id)initWithName:(NSString *)newName artist:(NSString *)newArtist
{
  [super init];
  [self setName:newName];
  [self setArtist:newArtist];
  return self;
}

- (void)dealloc // a
{
  NSLog(@"Deallocating %@", self); // b
  [name release]; // c
  [artist release]; // d
  [super dealloc]; // e
}

- (NSString *)name
{
  return name;
}

- (void)setName:(NSString *)newName
{
  [newName retain]; // increment reference count to indicate we want to work with it
  [name release]; // decrement reference count because we no longer will use the *old* name value
  name = newName;
}

- (NSString *)artist
{
  return artist;
}

- (void)setArtist:(NSString *)newArtist
{
  [newArtist retain];
  [artist release];
  artist = newArtist;
}

- (NSString *)description
{
  return [self name];
}
@end

int main (int argc, const char * argv[]) {
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
  Song * song1 = [[Song alloc] initWithName:@"We Have Explosive"
                                     artist:@"The Future Sound of London"];
  Song * song2 = [[Song alloc] initWithName:@"Loops of Fury"
                                     artist:@"The Chemical Brothers"];
  NSLog(@"Song 1: %@", song1);
  NSLog(@"Song 2: %@", song2);
  [song1 release];
  [song2 release];
  [pool release];
  return 0;
}

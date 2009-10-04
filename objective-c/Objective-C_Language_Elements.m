#import <Foundation/Foundation.h>

@interface Person : NSObject {
	NSString *lastName;
	NSString *firstName;
	int age;
}
	+(void)initilize;
	-(id)init;
	-(id)initWithLastName:(NSString *)lastName andFirstName:(NSString *)firstName;
	-(NSString *)lastName;
	-(void)setLastName:(NSString *)newLastName;
	-(void)setFirstName:(NSString *)newFirstName;
	-(NSString *)description;
	-(void)dealloc;
@end

static int personInstanceCount = 0;

@implementation Person
	// class initializer
	+(void)initilize {
		[super initialize];
		static BOOL initialized = NO;
		if (!initialized) {
			initialized = YES;
		}
	}
	
	-(id)init {
		personInstanceCount++;
		self = [super init];
		return self;
	}
	
	-(id)initWithLastName:(NSString *)newLastName andFirstName:(NSString *)newFirstName {
		[self init];
		[self setLastName:newLastName];
		[self setFirstName:newFirstName];
		return self;
	}

	-(NSString *)lastName {
		return lastName;
	}

	-(void)setLastName:(NSString *)newLastName {
		[newLastName retain];
		[lastName release];
		lastName = newLastName;
	}

	-(void)setFirstName:(NSString *)newFirstName {
		[newFirstName retain];
		[firstName release];
		firstName = newFirstName;
	}

	-(NSString *)description {
		return [[NSString alloc] initWithFormat:@"%@ <lastName=%@, firstName=%@>", [Person class], lastName, firstName];
	}
	
	-(void)dealloc {
		personInstanceCount--;
		[lastName dealloc];
		[firstName dealloc];
		[super dealloc];
	}
@end


int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

	Person *person = [[[Person alloc] initWithLastName:@"Pfeil" andFirstName:@"Brian"] autorelease];
    NSLog(@"person = %@", person);	
	
    [pool drain];
    return 0;
}

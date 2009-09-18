#import <objc/Object.h>
#import <stdio.h>
#import <math.h>

// interface
@interface Point : Object
{
  @private
    double x;
    double y;
}
 
- (id) x: (double) x_value;
- (double) x;
- (id) y: (double) y_value;
- (double) y;
- (double) magnitude;
@end

// implementation
@implementation Point
 
- (id) x: (double) x_value
{
     x = x_value;
        return self;
	}
 
- (double) x
{
     return x;
     }
 
- (id) y: (double) y_value
{
     y = y_value;
        return self;
	}
 
- (double) y
{
     return y;
     }
 
- (double) magnitude
{
     return sqrt(x*x+y*y);
     }
 
@end


int main(void)
{
  Point *point = [Point new];
  [point x:10.0];
  [point y:12.0];
  printf("The distance from the point (%g, %g) to the origin is %g.\n",
    [point x], [point y], [point magnitude]);

  return 0;
}

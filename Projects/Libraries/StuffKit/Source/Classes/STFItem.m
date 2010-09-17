
#import <StuffKit/STFItem.h>

@implementation STFItem

-(void) dealloc {
	self.name = nil;
	self.age = nil;
	[super dealloc];
}

@end


#import <StuffKit/STFItem.h>

@implementation STFItem

-(id) init {
	self = [super init];
	if (self != nil) {
	}
	return self;
}

-(void) dealloc {
	self.name = nil;
	self.age = nil;
	[super dealloc];
}

@end

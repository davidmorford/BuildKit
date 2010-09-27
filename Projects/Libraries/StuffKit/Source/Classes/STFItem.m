
#import <StuffKit/STFItem.h>
#import <ThingKit/THGItem.h>

@implementation STFItem

-(void) dealloc {
	self.thing = nil;
	self.name = nil;
	self.age = nil;
	[super dealloc];
}

@end

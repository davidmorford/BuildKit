
#import <ThingKit/THGItem.h>

@interface THGItem ()
@end

#pragma mark -

@implementation THGItem

@synthesize name;
@synthesize likesStuff;

-(id) initWithName:(NSString *)aName {
	self = [super init];
	if (!self) {
		return nil;
	}
	self.name = aName;
	return self;
}

-(void) dealloc {
	self.name = nil;
	[super dealloc];
}

@end

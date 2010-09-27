
#import <ThingKit/THGItem.h>

@interface THGItem ()
	@property (nonatomic, assign) BOOL likesStuff;
@end

#pragma mark -

@implementation THGItem

-(id) init {
	self = [super init];
	if (self != nil) {
	}
	return self;
}

-(void) dealloc {
	self.name = nil;
	[super dealloc];
}

@end

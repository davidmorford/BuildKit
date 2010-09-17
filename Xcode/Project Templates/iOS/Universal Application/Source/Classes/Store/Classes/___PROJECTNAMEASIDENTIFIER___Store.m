
#import "___PROJECTNAMEASIDENTIFIER___Store.h"
#import "___PROJECTNAMEASIDENTIFIER___StoreTypes.h"
#import "___PROJECTNAMEASIDENTIFIER___UserDefaults.h"

@implementation ___PROJECTNAMEASIDENTIFIER___Store

	@synthesize isStarting = starting;
	@synthesize isUpdating = updating;

	#pragma mark Initializer

	-(id) init {
		if (!(self = [super init])) {
			return nil;
		}
		return self;
	}

	#pragma mark -

	-(NSArray *) allObjects {
		if (self.isStarting) {
			return nil;
		}
		return [self fetchAllEntitiesForName:___PROJECTNAMEASIDENTIFIER___StateEntityName 
							 sortDescriptors:[self sortDescriptorArrayWithDescriptorWithKey:@"name"] 
								   batchSize:6];
	}


	#pragma mark Destructor

	-(void) dealloc {
		[super dealloc];
	}

@end

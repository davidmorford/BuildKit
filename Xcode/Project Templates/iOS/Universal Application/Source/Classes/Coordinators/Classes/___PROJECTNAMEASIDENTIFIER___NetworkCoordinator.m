
#import "___PROJECTNAMEASIDENTIFIER___NetworkCoordinator.h"

@interface ___PROJECTNAMEASIDENTIFIER___NetworkCoordinator ()
@end

#pragma mark -

static ___PROJECTNAMEASIDENTIFIER___NetworkCoordinator *gSharedNetworkCoordinator = nil;

#pragma mark -

@implementation ___PROJECTNAMEASIDENTIFIER___NetworkCoordinator

	#pragma mark Shared Coordinator

	+(___PROJECTNAMEASIDENTIFIER___NetworkCoordinator *) networkCoordinator {
		if (gSharedNetworkCoordinator == nil) {
			gSharedNetworkCoordinator = [[super allocWithZone:NULL] init];
		}
		return gSharedNetworkCoordinator;
	}

	+(id) allocWithZone:(NSZone *)zone {
		return [[self networkCoordinator] retain];
	}

	-(id) copyWithZone:(NSZone *)zone {
		return self;
	}

	-(id) retain {
		return self;
	}

	-(NSUInteger) retainCount {
		return NSUIntegerMax;
	}

	-(void) release {

	}

	-(id) autorelease {
		return self;
	}


	#pragma mark Initializer

	-(id) init {
		self = [super init];
		if (!self) {
			return nil;
		}
		return self;
	}

	
	#pragma mark <NTKURLRequestManagerDelegate>

	-(void) requestManagerCompletedRequestContext:(NTKURLRequestContext *)aContext {
	
	}

	-(void) requestManagerCancelledRequestContext:(NTKURLRequestContext *)aContext {
	
	}

	-(void) requestManagerFailedForRequestContext:(NTKURLRequestContext *)aContext {
	
	}

	#pragma mark Destructor

	-(void) dealloc {
		[super dealloc];
	}

@end

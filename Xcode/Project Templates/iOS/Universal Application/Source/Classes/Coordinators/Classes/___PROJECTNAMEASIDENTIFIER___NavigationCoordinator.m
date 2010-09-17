
#import "___PROJECTNAMEASIDENTIFIER___NavigationCoordinator.h"

@interface ___PROJECTNAMEASIDENTIFIER___NavigationCoordinator ()
@end

#pragma mark -

static ___PROJECTNAMEASIDENTIFIER___NavigationCoordinator *gSharedNavigationCoordinator = nil;

#pragma mark -

@implementation ___PROJECTNAMEASIDENTIFIER___NavigationCoordinator

	#pragma mark Shared Coordinator

	+(___PROJECTNAMEASIDENTIFIER___NavigationCoordinator *) navigationCoordinator {
		if (gSharedNavigationCoordinator == nil) {
			gSharedNavigationCoordinator = [[super allocWithZone:NULL] init];
		}
		return gSharedNavigationCoordinator;
	}

	+(id) allocWithZone:(NSZone *)zone {
		return [[self navigationCoordinator] retain];
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

	#pragma mark <NKNavigatorDelegate>

	-(void) navigatorDidEnterBackground:(NKNavigator *)aNavigator {
	
	}

	-(void) navigatorWillEnterForeground:(NKNavigator *)aNavigator {
	
	}

	-(NSURL *) navigator:(NKNavigator *)aNavigator URLToOpen:(NSURL *)aURL {
		return aURL;
	}

	-(BOOL) navigator:(NKNavigator *)aNavigator shouldOpenURL:(NSURL *)aURL {
		return TRUE;
	}

	-(BOOL) navigator:(NKNavigator *)aNavigator shouldOpenURL:(NSURL *)aURL withQuery:(NSDictionary *)query {
		return TRUE;
	}

	-(void) navigator:(NKNavigator *)aNavigator willOpenURL:(NSURL *)aURL inViewController:(UIViewController *)aController {
	
	}
	
	-(void) navigator:(NKNavigator *)aNavigator willUnloadViewController:(UIViewController *)aController {
	
	}


	#pragma mark Destructor

	-(void) dealloc {
		[super dealloc];
	}

@end

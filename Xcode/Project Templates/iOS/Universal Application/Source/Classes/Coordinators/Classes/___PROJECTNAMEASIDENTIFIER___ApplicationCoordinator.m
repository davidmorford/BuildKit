
#import "___PROJECTNAMEASIDENTIFIER___ApplicationCoordinator.h"
#import "___PROJECTNAMEASIDENTIFIER___UserDefaults.h"

@interface ___PROJECTNAMEASIDENTIFIER___ApplicationCoordinator ()
	-(void) start;
	-(void) setupUserDefaults;
	-(void) setupObservers;
	-(void) setupNotifications;
@end

#pragma mark -

static ___PROJECTNAMEASIDENTIFIER___ApplicationCoordinator *gSharedApplicationCoordinator = nil;

#pragma mark -

@implementation ___PROJECTNAMEASIDENTIFIER___ApplicationCoordinator

	#pragma mark Shared Coordinator

	+(___PROJECTNAMEASIDENTIFIER___ApplicationCoordinator *) applicationCoordinator {
		if (gSharedApplicationCoordinator == nil) {
			gSharedApplicationCoordinator = [[super allocWithZone:NULL] init];
		}
		return gSharedApplicationCoordinator;
	}

	+(id) allocWithZone:(NSZone *)zone {
		return [[self applicationCoordinator] retain];
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
		if (self) {
			[self performSelector:@selector(start) withObject:nil afterDelay:0];
		}
		return self;
	}


	#pragma mark Coordinator Main

	-(void) start {
		[self setupNotifications];
	}


	#pragma mark Setups

	-(void) setupUserDefaults {
		//NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
	}

	-(void) setupNavigation {
		//NKNavigator *navigator	= [NKNavigator navigator];
		//NKNavigationMap *map	= navigator.navigationMap;
		//[map from:@"___PROJECTNAMEASIDENTIFIER___://application/coordinator/reset"			toObject:self selector:@selector(resetApplication)];
		//[map from:@"___PROJECTNAMEASIDENTIFIER___://application/coordinator/reset/alert"	toObject:self selector:@selector(resetApplicationAlert)];
	}

	-(void) setupObservers {

	}

	-(void) setupNotifications {
		[[NSNotificationCenter defaultCenter] addObserver:self
												 selector:@selector(didReceiveMemoryWarning:)
													 name:UIApplicationDidReceiveMemoryWarningNotification
												   object:nil];
	}


	#pragma mark Application Reset

	-(void) resetApplication {
		[[NSUserDefaults standardUserDefaults] removePersistentDomainForName:[[NSBundle mainBundle] bundleIdentifier]];
	}


	#pragma mark Memory

	-(void) didReceiveMemoryWarning:(void *)object {
	
	}

	-(void) dealloc {
		[[NSNotificationCenter defaultCenter] removeObserver:self];
		[super dealloc];
	}

@end

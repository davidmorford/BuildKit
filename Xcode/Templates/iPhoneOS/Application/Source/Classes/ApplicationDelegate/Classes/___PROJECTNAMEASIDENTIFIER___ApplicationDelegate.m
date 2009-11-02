
#import "___PROJECTNAMEASIDENTIFIER___ApplicationDelegate.h"

@implementation ___PROJECTNAMEASIDENTIFIER___ApplicationDelegate

	@synthesize window;

	-(void) applicationDidFinishLaunching:(UIApplication *)application {    
		[window makeKeyAndVisible];
	}

	-(void) dealloc {
		[window release];
		[super dealloc];
	}

@end

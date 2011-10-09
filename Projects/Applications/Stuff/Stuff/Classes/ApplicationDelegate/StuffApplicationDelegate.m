
#import "StuffApplicationDelegate.h"
#import "StuffMasterViewController.h"

@implementation StuffApplicationDelegate

@synthesize window;
@synthesize navigationController;


#pragma mark Shared Delegate

+(StuffApplicationDelegate *) sharedApplicationDelegate {
	return (StuffApplicationDelegate *)[UIApplication sharedApplication].delegate;
}


#pragma mark <UIApplicationDelegate>

-(BOOL) application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
	window.userInteractionEnabled = TRUE;
	window.backgroundColor = [UIColor blackColor];
	window.contentMode = UIViewContentModeScaleToFill;
	window.autoresizesSubviews = TRUE;

    StuffMasterViewController *masterViewController = [[StuffMasterViewController alloc] init];
    navigationController = [[UINavigationController alloc] initWithRootViewController:masterViewController];
    window.rootViewController = navigationController;
    [masterViewController release];
	[window makeKeyAndVisible];

	return TRUE;
}

-(void) applicationDidEnterBackground:(UIApplication *)application {

}

-(void) applicationWillEnterForeground:(UIApplication *)application {
	
}

-(void) applicationWillResignActive:(UIApplication *)application {
	
}

-(void) applicationDidBecomeActive:(UIApplication *)application {
	
}

-(void) applicationWillTerminate:(UIApplication *)application {
	
}

-(BOOL) application:(UIApplication *)application openURL:(NSURL *)aURL sourceApplication:(NSString *)aSourceApplication annotation:(id)anAnnotation {
	return TRUE;
}


#pragma mark Memory

-(void) applicationDidReceiveMemoryWarning:(UIApplication *)application {
	
}

-(void) dealloc {
    self.navigationController = nil;
    self.window = nil;
	[super dealloc];
}

@end

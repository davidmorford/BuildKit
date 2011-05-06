
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
	self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
	self.window.userInteractionEnabled = TRUE;
	self.window.backgroundColor = [UIColor blackColor];
	self.window.contentMode = UIViewContentModeScaleToFill;
	self.window.autoresizesSubviews = TRUE;

    StuffMasterViewController *masterViewController = [[StuffMasterViewController alloc] init];
    self.navigationController = [[UINavigationController alloc] initWithRootViewController:masterViewController];
    self.window.rootViewController = self.navigationController;
    [masterViewController release];
	[self.window makeKeyAndVisible];

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

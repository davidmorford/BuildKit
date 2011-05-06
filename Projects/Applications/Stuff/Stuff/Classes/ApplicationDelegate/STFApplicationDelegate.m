
#import "STFApplicationDelegate.h"
#import "STFMasterViewController.h"
#import "STFDetailViewController.h"
#import "STFUserDefaults.h"

/*!
@class MOApplicationDelegate () <NKNavigatorDelegate, MOSessionControllerDelegate>
@abstract
*/
@interface STFApplicationDelegate ()
@property (nonatomic, retain, readwrite) UIWindow *window;
@property (nonatomic, retain, readwrite) UISplitViewController *splitViewController;
@property (nonatomic, copy) NSDictionary *launchOptions;
@end

#pragma mark -

@implementation STFApplicationDelegate

@synthesize window;
@synthesize splitViewController;
@synthesize launchOptions;

#pragma mark User Defaults

+(void) initialize {
	NSDictionary *defaults = [NSDictionary dictionaryWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"UserDefaults" ofType:@"plist"]];
	[[NSUserDefaults standardUserDefaults] registerDefaults:defaults];
}


#pragma mark Shared Delegate

+(STFApplicationDelegate *) sharedApplicationDelegate {
	return (STFApplicationDelegate *)[UIApplication sharedApplication].delegate;
}


#pragma mark <UIApplicationDelegate>

-(BOOL) application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)options {
    if (options) {
        self.launchOptions = [[NSDictionary alloc] initWithDictionary:options copyItems:TRUE];
		NSLog(@"Launch URL = %@", [self.launchOptions objectForKey:UIApplicationLaunchOptionsURLKey]);
		NSLog(@"Launch Source = %@", [self.launchOptions objectForKey:UIApplicationLaunchOptionsSourceApplicationKey]);
		NSLog(@"Launch Annotations = %@", [self.launchOptions objectForKey:UIApplicationLaunchOptionsAnnotationKey]);
    }
	
	self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
	self.window.userInteractionEnabled = TRUE;
	self.window.backgroundColor = [UIColor blackColor];
	self.window.contentMode = UIViewContentModeScaleToFill;
	self.window.autoresizesSubviews = TRUE;
	
	if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
		self.splitViewController = [[UISplitViewController alloc] init];
		self.splitViewController.delegate = self;

		STFMasterViewController *masterViewController = [[STFMasterViewController alloc] init];
		UINavigationController *navigationController = [[[UINavigationController alloc] initWithRootViewController:masterViewController] autorelease];
		[masterViewController release];
		STFDetailViewController *detailViewController = [[[STFDetailViewController alloc] init] autorelease];
		
		self.splitViewController.viewControllers = [NSArray arrayWithObjects:navigationController, detailViewController, nil];
		
		[self.window addSubview:self.splitViewController.view];
	}
	else if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone) {
		STFMasterViewController *masterViewController = [[STFMasterViewController alloc] init];
		UINavigationController *navigationController = [[[UINavigationController alloc] initWithRootViewController:masterViewController] autorelease];
		[masterViewController release];
		self.window.rootViewController = navigationController;
	}
	[self.window makeKeyAndVisible];
	return TRUE;
}

-(void) applicationDidEnterBackground:(UIApplication *)application {
	[[NSUserDefaults standardUserDefaults] setObject:[NSDate date] forKey:STFApplicationLastActiveDateKey];
	[[NSUserDefaults standardUserDefaults] synchronize];
}

-(void) applicationWillEnterForeground:(UIApplication *)application {
	
}

-(void) applicationWillResignActive:(UIApplication *)application {
	
}

-(void) applicationDidBecomeActive:(UIApplication *)application {
	
}

-(void) applicationWillTerminate:(UIApplication *)application {
	
}

-(BOOL) application:(UIApplication *)application openURL:(NSURL *)aURL sourceApplication:(NSString *)sourceApplication annotation:(id)annotation {
	//NSLog(@"%@, %@, %@", aURL, sourceApplication, annotation);
	return TRUE;
}


#pragma mark <UISplitViewControllerDelegate>

-(void) splitViewController:(UISplitViewController *)svc willHideViewController:(UIViewController *)aViewController withBarButtonItem:(UIBarButtonItem *)barButtonItem forPopoverController:(UIPopoverController *)pc {
	
}

-(void) splitViewController:(UISplitViewController *)svc willShowViewController:(UIViewController *)aViewController invalidatingBarButtonItem:(UIBarButtonItem *)barButtonItem {
	
}

-(void) splitViewController:(UISplitViewController *)svc popoverController:(UIPopoverController *)pc willPresentViewController:(UIViewController *)aViewController {
	
}


#pragma mark -

-(NSString *) applicationDocumentsDirectoryPath {
	NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
	NSString *basePath  = ([paths count] > 0) ? [paths objectAtIndex:0] : nil;
	return basePath;
}

-(NSString *) applicationVersion {
	return [[[NSBundle mainBundle] infoDictionary] objectForKey:(NSString *)kCFBundleVersionKey];
}


#pragma mark Memory

-(void) applicationDidReceiveMemoryWarning:(UIApplication *)application {

}

-(void) dealloc {
	self.launchOptions = nil;
	[splitViewController release];
	[window release];
	[super dealloc];
}

@end


#import "STApplicationDelegate.h"
#import "STFMasterViewController.h"
#import "STFDetailViewController.h"
#import "STFUserDefaults.h"

@interface STApplicationDelegate ()
@end

#pragma mark -

@implementation STApplicationDelegate

@synthesize window;
@synthesize splitViewController;
@synthesize navigationController;
@synthesize masterViewController;
@synthesize detailViewController;
@synthesize applicationDocumentsDirectoryPath;

#pragma mark Shared Delegate

+(STApplicationDelegate *) sharedApplicationDelegate {
	return (STApplicationDelegate *)[UIApplication sharedApplication].delegate;
}


#pragma mark <UIApplicationDelegate>

-(BOOL) application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
	
	self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
	self.window.userInteractionEnabled = TRUE;
	self.window.backgroundColor = [UIColor blackColor];
	self.window.contentMode = UIViewContentModeScaleToFill;
	self.window.autoresizesSubviews = TRUE;
	
	if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
		self.splitViewController = [[UISplitViewController alloc] init];
		self.splitViewController.delegate = self;
		
		self.masterViewController = [[STFMasterViewController alloc] init];
		self.navigationController = [[[UINavigationController alloc] initWithRootViewController:self.masterViewController] autorelease];
		self.detailViewController = [[[STFDetailViewController alloc] init] autorelease];
		
		self.splitViewController.viewControllers = [NSArray arrayWithObjects:navigationController, detailViewController, nil];
		
		[self.window addSubview:splitViewController.view];
		[self.window makeKeyAndVisible];
	}
	else if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone) {
		self.masterViewController = [[STFMasterViewController alloc] init];
		self.navigationController = [[UINavigationController alloc] initWithRootViewController:self.masterViewController];
		self.window.rootViewController = self.navigationController;
		[self.window makeKeyAndVisible];
	}
	
	return TRUE;
}

-(void) applicationDidEnterBackground:(UIApplication *)application {
	[[NSUserDefaults standardUserDefaults] setObject:[NSDate date] forKey:@"StuffLastActiveInForegroundDateKey"];
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

-(void) applicationDidReceiveMemoryWarning:(UIApplication *)application {
	
}

-(BOOL) application:(UIApplication *)application handleOpenURL:(NSURL *)aURL {
	return TRUE;
}

#pragma mark -

-(void) splitViewController:(UISplitViewController *)svc willHideViewController:(UIViewController *)aViewController withBarButtonItem:(UIBarButtonItem *)barButtonItem forPopoverController:(UIPopoverController *)pc {
	
}

-(void) splitViewController:(UISplitViewController *)svc willShowViewController:(UIViewController *)aViewController invalidatingBarButtonItem:(UIBarButtonItem *)barButtonItem {
	
}

-(void) splitViewController:(UISplitViewController *)svc popoverController:(UIPopoverController *)pc willPresentViewController:(UIViewController *)aViewController {
	
}


#pragma mark -

-(NSString *) applicationDocumentsDirectoryPath {
	NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
	NSString *basePath	= ([paths count] > 0) ? [paths objectAtIndex:0] : nil;
	return basePath;
}


#pragma mark -

-(void) dealloc {
	self.masterViewController = nil;
	self.detailViewController = nil;
	self.splitViewController = nil;
	self.navigationController = nil;
	self.window = nil;
	[super dealloc];
}

@end

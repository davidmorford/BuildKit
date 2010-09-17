
#import "___PROJECTNAMEASIDENTIFIER___ApplicationDelegate.h"
#import "___PROJECTNAMEASIDENTIFIER___RootViewController.h"
#import "___PROJECTNAMEASIDENTIFIER___ContentViewController.h"
#import "___PROJECTNAMEASIDENTIFIER___UserDefaults.h"
#import <NavigationKit/UIDevice+NKSystemVersion.h>

@interface ___PROJECTNAMEASIDENTIFIER___ApplicationDelegate ()
	@property (nonatomic, retain, readwrite) NKNavigationController *navigationController;
@end

#pragma mark -

@implementation ___PROJECTNAMEASIDENTIFIER___ApplicationDelegate

	@synthesize navigationController;
	@synthesize applicationDocumentsDirectoryPath;

	#pragma mark Shared Delegate

	+(___PROJECTNAMEASIDENTIFIER___ApplicationDelegate *) sharedApplicationDelegate {
		return (___PROJECTNAMEASIDENTIFIER___ApplicationDelegate *)[UIApplication sharedApplication].delegate;
	}


	#pragma mark <UIApplicationDelegate>

	-(BOOL) application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
		NSString *launchURLKey;
		NSString *launchSourceApplicationKey;
		NSString *launchRemoteNotificationKey;
		NSString *launchAnnotationKey;
		if (launchOptions) {
			launchURLKey				= [launchOptions objectForKey:UIApplicationLaunchOptionsURLKey];
			launchSourceApplicationKey	= [launchOptions objectForKey:UIApplicationLaunchOptionsSourceApplicationKey];
			launchRemoteNotificationKey = [launchOptions objectForKey:UIApplicationLaunchOptionsRemoteNotificationKey];
			launchAnnotationKey = [launchOptions objectForKey:UIApplicationLaunchOptionsAnnotationKey];
		}
		
		BOOL reset = [[NSUserDefaults standardUserDefaults] boolForKey:@"___PROJECTNAMEASIDENTIFIER___ApplicationResetKey"];
		if (reset) {
			[[NSUserDefaults standardUserDefaults] removePersistentDomainForName:@"___PROJECTNAMEASIDENTIFIER___"];
			[[NSUserDefaults standardUserDefaults] setBool:FALSE forKey:@"___PROJECTNAMEASIDENTIFIER___ApplicationResetKey"];
			[[NSUserDefaults standardUserDefaults] synchronize];
		}

		if (NKSystemHasUserIntefaceIdiom() && NKSystemUserIntefaceIdiom() == UIUserInterfaceIdiomPad) {
			// Root Navigator
			NKSplitViewNavigator *sharedNavigator	= [NKSplitViewNavigator splitViewNavigator];
			sharedNavigator.delegate				= self;
			
			// Left Side Navigator
			sharedNavigator.leftSideNavigator.delegate = self;
			NKNavigationMap *leftSideMap = sharedNavigator.leftSideNavigator.navigationMap;
			[leftSideMap from:@"___PROJECTNAMEASIDENTIFIER___://root" toSharedViewController:[___PROJECTNAMEASIDENTIFIER___RootViewController class]];
			
			// Right Side Navigator
			sharedNavigator.rightSideNavigator.delegate = self;
			NKNavigationMap *rightSideMap = sharedNavigator.rightSideNavigator.navigationMap;
			[rightSideMap from:@"___PROJECTNAMEASIDENTIFIER___://content" toEmptyHistoryViewController:[___PROJECTNAMEASIDENTIFIER___ContentViewController class]];
			
			NSArray *launchURLs = [NSArray arrayWithObjects:@"___PROJECTNAMEASIDENTIFIER___://root", 
															@"___PROJECTNAMEASIDENTIFIER___://content", 
															nil];
			[sharedNavigator restoreViewControllersWithDefaultURLs:launchURLs];
		}
		else {
			NKNavigator *sharedNavigator	= [NKNavigator navigator];
			sharedNavigator.delegate		= self;
			NKNavigationMap *navigationMap	= sharedNavigator.navigationMap;
			sharedNavigator.persistenceMode	= NKNavigatorPersistenceModeNone;

			[navigationMap from:@"___PROJECTNAMEASIDENTIFIER___://navigation"	toSharedViewController:[NKNavigationController class]];
			[navigationMap from:@"___PROJECTNAMEASIDENTIFIER___://root"			toSharedViewController:[___PROJECTNAMEASIDENTIFIER___RootViewController class]];
			[navigationMap from:@"___PROJECTNAMEASIDENTIFIER___://content"		toViewController:[___PROJECTNAMEASIDENTIFIER___ContentViewController class]];
			
			self.navigationController = (NKNavigationController *)[sharedNavigator viewControllerForURL:@"___PROJECTNAMEASIDENTIFIER___://navigation"];
			
			NKNavigationAction *launchAction = [NKNavigationAction actionWithURLPath:@"___PROJECTNAMEASIDENTIFIER___://root"];
			launchAction.animated = TRUE;
			[sharedNavigator openURLAction:launchAction];
		}
		return TRUE;
	}

	-(void) applicationDidEnterBackground:(UIApplication *)application {
		[[NSUserDefaults standardUserDefaults] setObject:[NSDate date] forKey:@"___PROJECTNAMEASIDENTIFIER___LastActiveInForegroundDateKey"];
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
		NKNavigationAction *action = [NKNavigationAction actionWithURLPath:[aURL absoluteString]];
		action.animated = TRUE;
		NKNavigator *navigator;
		if (NKSystemHasUserIntefaceIdiom() && NKSystemUserIntefaceIdiom() == UIUserInterfaceIdiomPad) {
			navigator = [[NKSplitViewNavigator splitViewNavigator] navigatorForURLPath:[aURL absoluteString]];
			if (navigator == nil) {
				return FALSE;
			}
		}
		else {
			navigator = [NKNavigator navigator];
		}
		[navigator openURLAction:action];
		return TRUE;
	}


	#pragma mark <NKNavigatorDelegate>

	-(BOOL) navigator:(NKNavigator *)aNavigator shouldOpenURL:(NSURL *)aURL {
		return TRUE;
	}

	-(BOOL) navigator:(NKNavigator *)navigator shouldOpenURL:(NSURL *)aURL withQuery:(NSDictionary *)query {
		return TRUE;
	}

	-(void) navigator:(NKNavigator *)aNavigator willOpenURL:(NSURL *)aURL inViewController:(UIViewController *)aController {
	}

	-(NSURL *) navigator:(NKNavigator *)aNavigator URLToOpen:(NSURL *)aURL {
		return aURL;
	}


	#pragma mark -

	-(NSString *) applicationDocumentsDirectoryPath {
		NSArray *paths		= NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
		NSString *basePath	= ([paths count] > 0) ? [paths objectAtIndex:0] : nil;
		return basePath;
	}


	#pragma mark -

	-(void) dealloc {
		self.navigationController = nil;
		[super dealloc];
	}

@end

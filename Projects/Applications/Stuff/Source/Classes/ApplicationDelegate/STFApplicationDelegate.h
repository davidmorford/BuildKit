
/*!
@project  Stuff
@header   STFApplicationDelegate.h
*/

#import <UIKit/UIKit.h>

@class STFMasterViewController, STFDetailViewController;

/*!
@class STFApplicationDelegate
@superclass NSObject <UIApplicationDelegate, UISplitViewControllerDelegate>
@abstract
@discussion
*/
@interface STFApplicationDelegate : NSObject <UIApplicationDelegate, UISplitViewControllerDelegate>

@property (nonatomic, retain, readonly) UIWindow *window;
@property (nonatomic, retain, readonly) UISplitViewController *splitViewController;
@property (nonatomic, readonly) NSString *applicationDocumentsDirectoryPath;

#pragma mark -

+(STFApplicationDelegate *) sharedApplicationDelegate;

#pragma mark -

-(NSString *) applicationVersion;

@end

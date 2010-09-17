
/*!
@project	Stuff
@header		StuffApplicationDelegate.h
@copyright	(c) 2010, Semantap
@created	9/17/2010
*/

#import <UIKit/UIKit.h>

@class STFMasterViewController, STFDetailViewController;

/*!
@class StuffApplicationDelegate
@superclass NSObject <UIApplicationDelegate>
@abstract
@discussion
*/
@interface STApplicationDelegate : NSObject <UIApplicationDelegate, UISplitViewControllerDelegate>

@property (nonatomic, retain) UIWindow *window;
@property (nonatomic, retain) UISplitViewController *splitViewController;
@property (nonatomic, retain) UINavigationController *navigationController;
@property (nonatomic, retain) STFMasterViewController *masterViewController;
@property (nonatomic, retain) STFDetailViewController *detailViewController;

@property (nonatomic, readonly) NSString *applicationDocumentsDirectoryPath;

#pragma mark -

+(STApplicationDelegate *) sharedApplicationDelegate;

@end

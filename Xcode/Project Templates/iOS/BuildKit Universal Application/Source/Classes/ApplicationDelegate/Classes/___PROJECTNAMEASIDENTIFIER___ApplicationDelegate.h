
/*!
@project	___PROJECTNAME___
@header		___PROJECTNAMEASIDENTIFIER___ApplicationDelegate.h
@copyright	(c) ___YEAR___, ___ORGANIZATIONNAME___
@created	___DATE___ - ___FULLUSERNAME___
*/

#import <UIKit/UIKit.h>

@class ___PROJECTNAMEASIDENTIFIER___MasterViewController, ___PROJECTNAMEASIDENTIFIER___DetailViewController;

/*!
@class ___PROJECTNAMEASIDENTIFIER___ApplicationDelegate
@superclass NSObject <UIApplicationDelegate, NKNavigatorDelegate>
@abstract
@discussion
*/
@interface ___PROJECTNAMEASIDENTIFIER___ApplicationDelegate : NSObject <UIApplicationDelegate, UISplitViewControllerDelegate>

@property (nonatomic, retain) UIWindow *window;

@property (nonatomic, retain) UISplitViewController *splitViewController;
@property (nonatomic, retain) ___PROJECTNAMEASIDENTIFIER___MasterViewController *masterViewController;
@property (nonatomic, retain) ___PROJECTNAMEASIDENTIFIER___DetailViewController *detailViewController;
@property (nonatomic, retain) UINavigationController *navigationController;

@property (nonatomic, readonly) NSString *applicationDocumentsDirectoryPath;

#pragma mark -

+(___PROJECTNAMEASIDENTIFIER___ApplicationDelegate *) sharedApplicationDelegate;

@end

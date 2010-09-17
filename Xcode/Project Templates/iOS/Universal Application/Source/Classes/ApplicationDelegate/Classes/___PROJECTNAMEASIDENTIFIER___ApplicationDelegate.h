
/*!
@project	___PROJECTNAME___
@header		___PROJECTNAMEASIDENTIFIER___ApplicationDelegate.h
@copyright	(c) ___YEAR___, ___ORGANIZATIONNAME___ ___XCODECOMPANYNAME___
@created	___DATE___ - ___FULLUSERNAME___
*/

#import <UIKit/UIKit.h>
#import <NavigationKit/NavigationKit.h>
#import <TableViewKit/TableViewKit.h>

@class NKNavigationController;

/*!
@class ___PROJECTNAMEASIDENTIFIER___ApplicationDelegate
@superclass NSObject <UIApplicationDelegate, NKNavigatorDelegate>
@abstract
@discussion
*/
@interface ___PROJECTNAMEASIDENTIFIER___ApplicationDelegate : NSObject <UIApplicationDelegate, NKNavigatorDelegate>

	@property (nonatomic, retain, readonly) NKNavigationController	*navigationController;
	@property (nonatomic, readonly) NSString *applicationDocumentsDirectoryPath;

	#pragma mark -

	+(___PROJECTNAMEASIDENTIFIER___ApplicationDelegate *) sharedApplicationDelegate;

@end

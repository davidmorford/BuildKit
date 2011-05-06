
/*!
@project	___PACKAGENAMEASIDENTIFIER___
@header		___PACKAGENAMEASIDENTIFIER___ApplicationDelegate.h
@copyright	(c) ___YEAR___, ___ORGANIZATIONNAME___
@created	___DATE___ Ð ___FULLUSERNAME___
*/

#import <UIKit/UIKit.h>

/*!
@class ___PACKAGENAMEASIDENTIFIER___ApplicationDelegate
@superclass NSObject <UIApplicationDelegate>
@abstract
@discussion
*/
@interface ___PACKAGENAMEASIDENTIFIER___ApplicationDelegate : NSObject <UIApplicationDelegate>

@property (nonatomic, retain) UIWindow *window;
@property (nonatomic, retain) UINavigationController *navigationController;

#pragma mark -

+(___PACKAGENAMEASIDENTIFIER___ApplicationDelegate *) sharedApplicationDelegate;

@end

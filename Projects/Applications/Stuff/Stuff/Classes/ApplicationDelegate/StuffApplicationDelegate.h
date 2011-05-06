
/*!
@project	Stuff
@header		StuffApplicationDelegate.h
@copyright	(c) 2011, Semantap
@created	5/5/11 – David
*/

#import <UIKit/UIKit.h>

/*!
@class StuffApplicationDelegate
@superclass NSObject <UIApplicationDelegate>
@abstract
@discussion
*/
@interface StuffApplicationDelegate : NSObject <UIApplicationDelegate>

@property (nonatomic, retain) UIWindow *window;
@property (nonatomic, retain) UINavigationController *navigationController;

#pragma mark -

+(StuffApplicationDelegate *) sharedApplicationDelegate;

@end

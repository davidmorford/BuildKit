
/*!
@project  Stuff
@header   STFDetailViewController.h
*/

#import <QuartzCore/QuartzCore.h>
#import <UIKit/UIKit.h>
#import <StuffKit/STFItem.h>

@class STFItem;

/*!
@class STFDetailViewController
@superclass UIViewController
@abstract
@discussion
*/
@interface STFDetailViewController : UIViewController

@property (nonatomic, retain) STFItem *item;

-(id) initWithItem:(STFItem *)anItem;

@end

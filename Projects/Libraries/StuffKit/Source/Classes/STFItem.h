
/*!
@project    StuffKit
@header     STFItem.h
*/

#import <Foundation/Foundation.h>
#import <ThingKit/THGItem.h>

/*!
@class STFItem
@superclass NSObject
@abstract
@discussion
*/
@interface STFItem : NSObject

@property (nonatomic, copy) THGItem *thing;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, retain) NSNumber *age;

@end


/*!
@project    ThingKit
@header     THGItem.h
*/

#import <Foundation/Foundation.h>

@interface THGItem : NSObject

@property (copy) NSString *name;
@property (nonatomic, assign) BOOL likesStuff;

#pragma mark -

-(id) initWithName:(NSString *)aName;

@end

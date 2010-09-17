
/*!
@project    ___PROJECTNAME___
@header     ___PROJECTNAMEASIDENTIFIER___Store.h
@copyright  (c) 2010
*/

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import <StorageKit/StorageKit.h>

/*!
@class ___PROJECTNAMEASIDENTIFIER___Store
@superclass STKObjectStore
@abstract
@discussion
*/
@interface ___PROJECTNAMEASIDENTIFIER___Store : STKObjectStore {

}

	@property (nonatomic, assign) BOOL isStarting;
	@property (nonatomic, assign) BOOL isUpdating;

	#pragma mark -

	-(NSArray *) allObjects;

@end

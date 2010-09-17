
/*!
@project	___PROJECTNAME___
@header     ___PROJECTNAMEASIDENTIFIER___StoreCoordinator.h
@copyright	(c) ___YEAR___ , ___ORGANIZATIONNAME___
@created	___DATE___ , ___FULLUSERNAME___
*/

#import <Foundation/Foundation.h>
#import <StorageKit/StorageKit.h>

/*!
@class ___PROJECTNAMEASIDENTIFIER___StoreCoordinator
@superclass NSObject <STKStoreDelegate>
@abstract
@discussion
*/
@interface ___PROJECTNAMEASIDENTIFIER___StoreCoordinator : NSObject <STKStoreDelegate> {

}

	+(___PROJECTNAMEASIDENTIFIER___StoreCoordinator *) storeCoordinator;

	#pragma mark -

	@property (nonatomic, retain) STKObjectStore *appplicaitonStore;
	@property (nonatomic, retain) STKObjectStore *objectStore;

@end

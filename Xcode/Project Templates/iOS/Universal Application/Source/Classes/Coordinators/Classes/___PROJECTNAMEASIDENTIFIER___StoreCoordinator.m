
#import "___PROJECTNAMEASIDENTIFIER___StoreCoordinator.h"

@interface ___PROJECTNAMEASIDENTIFIER___StoreCoordinator ()
@end

#pragma mark -

static ___PROJECTNAMEASIDENTIFIER___StoreCoordinator *gSharedStoreCoordinator = nil;

#pragma mark -

@implementation ___PROJECTNAMEASIDENTIFIER___StoreCoordinator

	#pragma mark Shared Coordinator

	+(___PROJECTNAMEASIDENTIFIER___StoreCoordinator *) storeCoordinator {
		if (gSharedStoreCoordinator == nil) {
			gSharedStoreCoordinator = [[super allocWithZone:NULL] init];
		}
		return gSharedStoreCoordinator;
	}

	+(id) allocWithZone:(NSZone *)zone {
		return [[self storeCoordinator] retain];
	}

	-(id) copyWithZone:(NSZone *)zone {
		return self;
	}

	-(id) retain {
		return self;
	}

	-(NSUInteger) retainCount {
		return NSUIntegerMax;
	}

	-(void) release {

	}

	-(id) autorelease {
		return self;
	}
	
	#pragma mark -

	@synthesize appplicaitonStore;
	@synthesize objectStore;

	#pragma mark Initializer

	-(id) init {
		self = [super init];
		if (!self) {
			return nil;
		}
		self.objectStore = [[STKObjectStore alloc] initWithModelName:@"___PROJECTNAMEASIDENTIFIER___" 
												 persistentStoreName:@"___PROJECTNAMEASIDENTIFIER___Store" 
														forceReplace:FALSE 
														   storeType:NSSQLiteStoreType 
														storeOptions:nil];
		self.objectStore.delegate = self;
		return self;
	}


	#pragma mark <STKObjectStoreDelegate>

	-(void) store:(id <STKStore>)store didCreateNewManagedObjectContext:(NSManagedObjectContext *)context {
		NSLog(@"%@, %@", store, context);
	}

	-(void) store:(id <STKStore>)store willMergeManagedObjectModels:(NSArray *)models error:(NSError *)error {
		NSLog(@"%@, %@", store, models);
	}

	-(void) store:(id <STKStore>)store didCreatePersistentStoreCoordinator:(NSPersistentStoreCoordinator *)coordinator error:(NSError *)error {
		NSLog(@"%@, %@", store, coordinator);
	}

	-(void) store:(id <STKStore>)store willAddPersistentStores:(NSArray *)stores error:(NSError *)error {
		NSLog(@"%@, %@", store, stores);
	}

	-(void) store:(id <STKStore>)store willCreateManagedObjectContexts:(NSArray *)contexts error:(NSError *)error {
		NSLog(@"%@, %@", store, contexts);
	}

	-(void) store:(id <STKStore>)store coordinatorStoresDidChange:(NSPersistentStoreCoordinator *)coordinator {
		NSLog(@"%@, %@", store, coordinator);
	}

	-(void) store:(id <STKStore>)store contextObjectsDidChange:(NSArray *)changedObjects {
		NSLog(@"%@, %@", store, changedObjects);
	}

	-(void) store:(id <STKStore>)store contextDidSave:(NSArray *)context {
		NSLog(@"%@, %@", store, context);	
	}


	#pragma mark Destructor

	-(void) dealloc {
		self.objectStore = nil;
		[super dealloc];
	}

@end

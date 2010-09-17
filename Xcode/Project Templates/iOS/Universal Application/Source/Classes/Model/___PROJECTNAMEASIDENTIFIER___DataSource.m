
#import "___PROJECTNAMEASIDENTIFIER___DataSource.h"

@interface ___PROJECTNAMEASIDENTIFIER___DataSource ()
	@property (nonatomic, retain, readwrite) NSMutableArray *controllers;
@end

#pragma mark -

@implementation ___PROJECTNAMEASIDENTIFIER___DataSource

	@synthesize controllers;

	#pragma mark -

	-(id) initWithCellDataSource:(id <TVKTableCellDataSource>)aCellDataSource {
		self = [super initWithCellDataSource:aCellDataSource];
		if (!self) {
			return nil;
		}
		self.controllers = [[NSMutableArray alloc] init];
		return self;
	}


	#pragma mark -

	-(void) loadFromPropertyListWithName:(NSString *)plistName inBundle:(NSBundle *)aBundle {
		self.controllers = [[NSArray arrayWithContentsOfFile:[aBundle pathForResource:plistName ofType:@"plist"]] retain];
		[self notifyDelegates:[TVKTableDataEvent eventForRefreshData]];
	}

	-(NSInteger) numberOfSections {
		return 1;
	}

	-(NSInteger) numberOfRowsInSection:(NSInteger)sectionIndex {
		return [self.controllers count];
	}

	-(id) objectAtIndexPath:(NSIndexPath *)indexPath {
		return [self.controllers objectAtIndex:indexPath.row];
	}

	#pragma mark -

	-(void) dealloc {
		self.controllers = nil;
		[super dealloc];
	}

@end

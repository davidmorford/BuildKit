
#import "STFMasterViewController.h"
#import "STFDetailViewController.h"
#import "STFApplicationDelegate.h"

@implementation STFMasterViewController

@synthesize items;

#pragma mark Initializer

-(id) init {
	self = [super initWithStyle:UITableViewStyleGrouped];
	if (!self) {
		return nil;
	}
	return self;
}


#pragma mark UIViewController

-(void) loadView {
	[super loadView];
	self.title = @"Stuff Items";
	self.tableView.rowHeight = 56;
	NSMutableArray *objects = [[NSMutableArray alloc] init];
	NSUInteger itemCount = 20;
	for (NSUInteger currentIndex = 0; currentIndex < itemCount; currentIndex++) {
		STFItem *item = [[STFItem alloc] init];
		item.name = [NSString stringWithFormat:@"Item %i", currentIndex];
		[objects addObject:item];
		[item release];
	}
	self.items = [[NSArray alloc] initWithArray:objects];
	[objects release];
}

-(void) viewDidLoad {
	[super viewDidLoad];
}

-(void) viewWillAppear:(BOOL)animated {
	[super viewWillAppear:animated];
}

-(void) viewDidAppear:(BOOL)animated {
	[super viewDidAppear:animated];
}

-(void) viewWillDisappear:(BOOL)animated {
	[super viewWillDisappear:animated];
}

-(void) viewDidDisappear:(BOOL)animated {
	[super viewDidDisappear:animated];
}

-(BOOL) shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)orientation {
	return TRUE;
}

-(CGSize) contentSizeForViewInPopover {
	return CGSizeMake(320.0, self.tableView.rowHeight * [self.tableView numberOfRowsInSection:0]);
}


#pragma mark <UITableViewDataSource>

-(NSInteger) tableView:(UITableView *)tv numberOfRowsInSection:(NSInteger)section {
	return [self.items count];
}

-(UITableViewCell *) tableView:(UITableView *)tv cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	static NSString *CellIdentifier = @"CellIdentifier";
	UITableViewCell *cell = [tv dequeueReusableCellWithIdentifier:CellIdentifier];
	if (cell == nil) {
		cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier] autorelease];
		cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
	}
	STFItem *item = [self.items objectAtIndex:indexPath.row];
	cell.textLabel.text = item.name;
	cell.detailTextLabel.text = [NSString stringWithFormat:@"Details about %@...", item.name];
	return cell;
}


#pragma mark <UITableViewDelegate>

-(void) tableView:(UITableView *)tv didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	[tv deselectRowAtIndexPath:indexPath animated:YES];
	STFItem *item = [self.items objectAtIndex:indexPath.row];
	STFDetailViewController *detailViewController = [[STFDetailViewController alloc] initWithItem:item];
	if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
		NSArray *controllers = [NSArray arrayWithObjects:[[STFApplicationDelegate sharedApplicationDelegate].splitViewController.viewControllers objectAtIndex:0], detailViewController, nil];
		[[STFApplicationDelegate sharedApplicationDelegate].splitViewController setViewControllers:controllers];
	}
	else if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone) {
		[self.navigationController pushViewController:detailViewController animated:YES];
	}
	[detailViewController release];
}


#pragma mark Memory

-(void) didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
}

-(void) viewDidUnload {
	[super viewDidUnload];
}

-(void) dealloc {
	self.items = nil;
	[super dealloc];
}

@end

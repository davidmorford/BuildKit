
#import "___PROJECTNAMEASIDENTIFIER___RootViewController.h"

@interface ___PROJECTNAMEASIDENTIFIER___RootViewController ()
	@property (nonatomic, retain, readwrite) ___PROJECTNAMEASIDENTIFIER___DataSource *dataSource;
@end

#pragma mark -

@implementation ___PROJECTNAMEASIDENTIFIER___RootViewController

	@synthesize dataSource;

	#pragma mark -

	-(id) init {
		self = [super initWithStyle:UITableViewStyleGrouped];
		if (!self) {
			return nil;
		}
		self.dataSource = [[___PROJECTNAMEASIDENTIFIER___DataSource alloc] initWithCellDataSource:self];
		[self.dataSource addTableDataEventDelegate:self];
		return self;
	}


	#pragma mark -

	-(void) loadView {
		[super loadView];
		self.navigationItem.backBarButtonItem	= [[[UIBarButtonItem alloc] initWithTitle:@"Back" 
																				  style:UIBarButtonItemStyleBordered 
																				 target:nil 
																				 action:nil] autorelease];
	}

	-(void) viewDidLoad {
		[super viewDidLoad];
		self.tableView.rowHeight	= 65;
		self.tableView.dataSource	= self.dataSource;
		self.title					= @"___PROJECTNAMEASIDENTIFIER___";
		[self.dataSource loadFromPropertyListWithName:@"___PROJECTNAMEASIDENTIFIER___RootViewController" 
											 inBundle:[NSBundle mainBundle]];
	}


	#pragma mark <TVKTableDataEventDelegate>

	-(void) tableDataSourceChangeWithEvent:(TVKTableDataEvent *)changeEvent {
		[self.tableView reloadData];
	}


	#pragma mark <TVKTableCellDataSource>

	-(UITableViewCell *) dequeueReusableCellWithIdentifier:(NSString *)reuseIdentifier {
		return [self.tableView dequeueReusableCellWithIdentifier:reuseIdentifier];
	}

	-(UITableViewCell *) cellForObjectAtIndexPath:(NSIndexPath *)indexPath reuseIdentifier:(NSString *)reuseIdentifier {
		return [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:reuseIdentifier] autorelease];
	}

	-(void) configureCell:(UITableViewCell *)cell forObject:(id)object atIndexPath:(NSIndexPath *)indexPath {
		cell.textLabel.text			= [object valueForKey:@"name"];
		cell.detailTextLabel.text	= [object valueForKey:@"description"];
		cell.accessoryType			= UITableViewCellAccessoryDisclosureIndicator;
	}


	#pragma mark UITableViewDelegate


	-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
		NSDictionary *exampleData   = [self.dataSource objectAtIndexPath:indexPath];
		id navigationObject         = [exampleData valueForKey:@"navigationURL"];
		if ([navigationObject isKindOfClass:[NSString class]]) {
			NSString *navigationURL     = [exampleData valueForKey:@"navigationURL"];
			NKNavigator *navigator      = [[NKNavigator navigator] navigatorForURLPath:navigationURL];
			NKNavigationAction *action  = [NKNavigationAction actionWithURLPath:navigationURL];
			action.animated             = TRUE;
			[navigator openURLAction:action];
		}
		else if ([navigationObject isKindOfClass:[NSArray class]]) {
			NSArray *navigationURLs     = [exampleData valueForKey:@"navigationURL"];
			for (id anObject in navigationURLs) {
				if ([anObject isKindOfClass:[NSString class]]) {
					NSString *navigationURL     = (NSString *) anObject;
					NKNavigator *navigator      = [[NKNavigator navigator] navigatorForURLPath:navigationURL];
					NKNavigationAction *action  = [NKNavigationAction actionWithURLPath:navigationURL];
					action.animated             = TRUE;
					[navigator openURLAction:action];
				}
			}
		}
	}



	#pragma mark -

	-(void) dealloc {
		self.dataSource = nil;
		[super dealloc];
	}

@end

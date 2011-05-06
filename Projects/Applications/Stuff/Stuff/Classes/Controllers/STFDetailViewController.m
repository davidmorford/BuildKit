
#import "STFDetailViewController.h"

@implementation STFDetailViewController

@synthesize item;

#pragma mark Initializer

-(id) initWithItem:(STFItem *)anItem {
	self = [super initWithNibName:nil bundle:nil];
	if (!self) {
		return nil;
	}
	self.item = anItem;
	return self;
}


#pragma mark UIViewController

-(void) loadView {
	[super loadView];
	self.title = self.item.name;
	self.view.backgroundColor = [UIColor whiteColor];
	if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
		UIToolbar *toolbar = [[UIToolbar alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 44)];
		toolbar.autoresizingMask = (UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleBottomMargin);
		[self.view addSubview:toolbar];
		[toolbar release];
	}
	UILabel *itemNameLabel = [[UILabel alloc] initWithFrame:CGRectZero];
	itemNameLabel.text = self.item.name;
	itemNameLabel.font = [UIFont boldSystemFontOfSize:22.0];
	[itemNameLabel sizeToFit];
	itemNameLabel.center = self.view.center;
	[self.view addSubview:itemNameLabel];
	[itemNameLabel release];
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

-(BOOL) shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	return TRUE;
}


#pragma mark Memory

-(void) didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
}

-(void) viewDidUnload {
	[super viewDidUnload];
}

-(void) dealloc {
	self.item = nil;
	[super dealloc];
}

@end

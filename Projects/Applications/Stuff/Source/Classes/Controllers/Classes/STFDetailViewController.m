
#import "STFDetailViewController.h"

@implementation STFDetailViewController

#pragma mark Initializer

-(id) init {
	self = [super initWithNibName:nil bundle:nil];
	if (!self) {
		return nil;
	}
	self.item = [[STFItem alloc] init];
	self.item.name = @"Foo";
	self.item.age  = [NSNumber numberWithInt:42];
	return self;
}

#pragma mark UIViewController

-(void) loadView {
	[super loadView];
	self.title = @"Detail";
	self.view.backgroundColor = [UIColor lightGrayColor];
}

-(void) viewDidLoad {
	[super viewDidLoad];
	NSLog(@"%@", self.item);
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

#pragma mark Gozer

-(void) didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
}

-(void) viewDidUnload {
	// You know the drill
}

-(void) dealloc {
	// Look ma, no ivar and no @synthesize
	self.item = nil;
	[super dealloc];
}

@end

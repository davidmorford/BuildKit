
#import "___PROJECTNAMEASIDENTIFIER___DetailViewController.h"

@implementation ___PROJECTNAMEASIDENTIFIER___DetailViewController

#pragma mark UIViewController

-(id) init {
	if (self = [super initWithNibName:nil bundle:nil]) {
	}
	return self;
}

-(void) loadView {
	[super loadView];
	self.view.backgroundColor = [UIColor lightGrayColor];
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

-(void) dealloc {
	[super dealloc];
}

@end

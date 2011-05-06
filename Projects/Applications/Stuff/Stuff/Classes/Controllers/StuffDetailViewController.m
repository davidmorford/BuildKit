
#import "StuffDetailViewController.h"

@implementation StuffDetailViewController

#pragma mark Initializer

-(id) init {
	self = [super initWithNibName:nil bundle:nil];
    if (!self) {
		return nil;
	}
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
	[super dealloc];
}

@end

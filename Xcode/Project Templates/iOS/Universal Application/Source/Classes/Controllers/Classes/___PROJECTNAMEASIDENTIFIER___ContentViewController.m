
#import "___PROJECTNAMEASIDENTIFIER___ContentViewController.h"


@implementation ___PROJECTNAMEASIDENTIFIER___ContentViewController

	#pragma mark UIViewController

	-(id) initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
		if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
		}
		return self;
	}

	-(void) loadView {
		[super loadView];
	}

	-(void) viewDidLoad {
		[super viewDidLoad];
		//self.navigationItem.rightBarButtonItem = self.editButtonItem;
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
		return (interfaceOrientation == UIInterfaceOrientationPortrait);
	}

	-(void) didReceiveMemoryWarning {
		[super didReceiveMemoryWarning];
	}

	#pragma mark Destructor

	-(void) dealloc {
		[super dealloc];
	}

@end

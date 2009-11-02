
/*!
@project	___PROJECTNAME___
@header		___PROJECTNAMEASIDENTIFIER___UnitTest.h
@copyright	(c) ___YEAR___, ___ORGANIZATIONNAME___
@created	___DATE___ - ___FULLUSERNAME___
*/

#define USE_APPLICATION_UNIT_TEST 1

#import <SenTestingKit/SenTestingKit.h>
#import <UIKit/UIKit.h>

/*!
@class ___PROJECTNAMEASIDENTIFIER___UnitTest
@superclass SenTestCase
@abstract Application unit tests contain unit test code that must be 
injected into an application to run correctly.
@discussion Define USE_APPLICATION_UNIT_TEST to 0 if the unit test code is 
designed to be linked into an independent test executable.
*/
@interface ___PROJECTNAMEASIDENTIFIER___UnitTest : SenTestCase {

}

	#if USE_APPLICATION_UNIT_TEST
	-(void) testAppDelegate;
	#else
	-(void) testMath;
	#endif

@end

#pragma mark -

@implementation ___PROJECTNAMEASIDENTIFIER___UnitTest

	#if USE_APPLICATION_UNIT_TEST
	-(void) testAppDelegate {
		id yourApplicationDelegate = [[UIApplication sharedApplication] delegate];
		STAssertNotNil(yourApplicationDelegate, @"UIApplication failed to find the AppDelegate");
	}
	#else
	-(void) testMath {
		STAssertTrue((1 + 1) == 2, @"Compiler isn't feeling well today :-(" );
	}
	#endif

@end

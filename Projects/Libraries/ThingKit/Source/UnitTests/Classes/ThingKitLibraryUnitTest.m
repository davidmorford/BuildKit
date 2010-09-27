
/*!
@header		ThingKitLibrary.h
@project	ThingKit
@author		David
@copyright	(c) 2010, Semantap
@created	9/27/10
*/

#import <SenTestingKit/SenTestingKit.h>
#import <UIKit/UIKit.h>
#import <ThingKit/ThingKit.h>

@interface ThingKitLibraryUnitTest : SenTestCase {

}

	-(void) testMath;

@end

#pragma mark -

@implementation ThingKitLibraryUnitTest

	-(void) testMath {
		STAssertTrue((1 + 1) == 2, @"Compiler isn't feeling well today :-(" );
	}

@end


/*!
@project	StuffKit
@header		StuffKitLibrary.h
@created	3/27/11
*/

#import <SenTestingKit/SenTestingKit.h>
#import <UIKit/UIKit.h>
#import <StuffKit/StuffKit.h>

@interface StuffKitLibraryUnitTest : SenTestCase
-(void) testMath;
@end

#pragma mark -

@implementation StuffKitLibraryUnitTest

-(void) testMath {
	STAssertTrue((1 + 1) == 2, @"Compiler isn't feeling well today :-(" );
}

@end

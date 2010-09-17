
/*!
@project	StuffKit
@header		StuffKitLibraryUnitTest.h
@copyright	(c) 2010, Semantap
@created	9/17/10
*/

#import <Foundation/Foundation.h>
#import <SenTestingKit/SenTestingKit.h>
#import <StuffKit/StuffKit.h>

@interface StuffKitLibraryUnitTest : SenTestCase {

}

	-(void) testItem;

@end

#pragma mark -

@implementation StuffKitLibraryUnitTest

	-(void) testItem {
		STFItem *item = [[STFItem alloc] init];
		STAssertNotNil(item, @"Can not be nil.");
	}

@end

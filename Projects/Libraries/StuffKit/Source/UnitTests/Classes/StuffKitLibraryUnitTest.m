
/*!
@header		StuffKitLibraryUnitTest.h
@project	StuffKit
*/

#import <SenTestingKit/SenTestingKit.h>
#import <Foundation/Foundation.h>
#import <StuffKit/StuffKit.h>

@interface StuffKitLibraryUnitTest : SenTestCase {

}

	-(void) testItem;

@end

#pragma mark -

@implementation StuffKitLibraryUnitTest

	-(void) testItem {
		STFItem *item = [[STFItem alloc] init];
		item.name = @"Foo";
		item.age = [NSNumber numberWithInt:69];
	}

@end

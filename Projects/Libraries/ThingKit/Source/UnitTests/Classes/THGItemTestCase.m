
#import <Foundation/Foundation.h>
#import <SenTestingKit/SenTestingKit.h>
#import <ThingKit/THGItem.h>

@interface THGItemTestCase : SenTestCase

-(void) testName;

@end

#pragma mark -

@implementation THGItemTestCase

-(void) setUp {
	
}

-(void) tearDown {
	
}

-(void) testName {
	THGItem *item = [[THGItem alloc] init];
	item.name = @"An Item Name";
	item.likesStuff = TRUE;
	
	STAssertEquals(item.name, @"An Item Name", @"");
	STAssertTrue(item.likesStuff, @"");
}

@end

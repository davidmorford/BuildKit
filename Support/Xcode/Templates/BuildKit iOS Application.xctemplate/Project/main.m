
/*!
@file		main.m
@project	___PACKAGENAME___
@copyright	(c) ___YEAR___, ___ORGANIZATIONNAME___
@created	___DATE___ - ___FULLUSERNAME___
*/

#import <UIKit/UIKit.h>

int 
main(int argc, char *argv[]) {
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	int retVal = UIApplicationMain(argc, argv, nil, @"___PACKAGENAMEASIDENTIFIER___ApplicationDelegate");
	[pool release];
	return retVal;
}

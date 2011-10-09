
/*!
@file		main.m
@project	Stuff
@copyright	(c) 2011, Corporation 9592
*/

#import <UIKit/UIKit.h>
#import "StuffApplicationDelegate.h"

int 
main(int argc, char *argv[]) {
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	int retVal = UIApplicationMain(argc, argv, nil, NSStringFromClass([StuffApplicationDelegate class]));
	[pool release];
	return retVal;
}

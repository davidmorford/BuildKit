
/*!
@file		main.m
@project	Stuff
@copyright	(c) 2011, Semantap
@created	5/5/11 - David
*/

#import <UIKit/UIKit.h>

int 
main(int argc, char *argv[]) {
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	int retVal = UIApplicationMain(argc, argv, nil, @"StuffApplicationDelegate");
	[pool release];
	return retVal;
}

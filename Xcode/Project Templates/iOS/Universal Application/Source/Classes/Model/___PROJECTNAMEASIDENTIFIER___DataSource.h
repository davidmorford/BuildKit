
/*!
@project    ___PROJECTNAME___
@header     ___PROJECTNAMEASIDENTIFIER___DataSource.h
@copyright  (c) 2010
*/

#import <UIKit/UIKit.h>
#import <TableViewKit/TableViewKit.h>

/*!
@class ___PROJECTNAMEASIDENTIFIER___DataSource
@superclass TVKTableDataSource
@abstract
@discussion
*/
@interface ___PROJECTNAMEASIDENTIFIER___DataSource : TVKTableDataSource {

}

	-(void) loadFromPropertyListWithName:(NSString *)plistName inBundle:(NSBundle *)aBundle;

@end

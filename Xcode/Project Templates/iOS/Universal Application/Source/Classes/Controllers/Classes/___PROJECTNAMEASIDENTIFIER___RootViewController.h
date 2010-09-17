
/*!
@project	___PROJECTNAME___
@header		___PROJECTNAMEASIDENTIFIER___RootViewController.h
@copyright	(c) ___YEAR___ , ___ORGANIZATIONNAME___
@created	___DATE___ , ___FULLUSERNAME___
*/

#import <UIKit/UIKit.h>
#import <NavigationKit/NavigationKit.h>
#import <TableViewKit/TableViewKit.h>
#import "___PROJECTNAMEASIDENTIFIER___DataSource.h"

/*!
@class ___PROJECTNAMEASIDENTIFIER___RootViewController
@superclass UITableViewController <TVKTableDataEventDelegate, TVKTableCellDataSource>
@abstract
@discussion
*/
@interface ___PROJECTNAMEASIDENTIFIER___RootViewController : UITableViewController <TVKTableDataEventDelegate, TVKTableCellDataSource> {
	___PROJECTNAMEASIDENTIFIER___DataSource *dataSource;
}

	@property (nonatomic, retain, readonly) ___PROJECTNAMEASIDENTIFIER___DataSource *dataSource;

@end

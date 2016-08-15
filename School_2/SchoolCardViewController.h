//
//  SchoolCardViewController.h
//  School_2
//
//  Created by Ray on 15/12/16.
//  Copyright © 2015年 Mu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
@interface SchoolCardViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *moneyLabel;
@property int money;
@property AppDelegate *app;
@end

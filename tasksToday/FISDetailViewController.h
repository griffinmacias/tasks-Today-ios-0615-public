//
//  FISDetailViewController.h
//  tasksToday
//
//  Created by Mason Macias on 6/15/15.
//  Copyright (c) 2015 Joe Burgess. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FISViewController.h"
@interface FISDetailViewController : UIViewController

@property (nonatomic, strong) FISViewController *calendar;

@property (strong, nonatomic) NSArray *eventsForDetail;

@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

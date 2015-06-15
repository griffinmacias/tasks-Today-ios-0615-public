//
//  FISDetailViewController.m
//  tasksToday
//
//  Created by Mason Macias on 6/15/15.
//  Copyright (c) 2015 Joe Burgess. All rights reserved.
//

#import "FISDetailViewController.h"
#import "FISViewController.h"
#import <EventKit/EventKit.h>
@interface FISDetailViewController ()

@end

@implementation FISDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    NSMutableString *eventTitles = [[NSMutableString alloc] init];
    
    for (EKEvent *event in self.eventsForDetail) {
        
        
        if ([self.eventsForDetail.lastObject isEqual:event]) {
            [eventTitles appendFormat:@"%@",event.title];
        } else {
              [eventTitles appendFormat:@"%@\n",event.title];
        }
        
       
        
        
        self.textView.text = eventTitles;

    
}
    
 

//    self.textView.text = self.calendar.nextYearsEvents;
    
    
//    self.textView.text = self.calendar.theEvents;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

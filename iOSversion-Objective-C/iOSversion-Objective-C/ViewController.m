//
//  ViewController.m
//  iOSversion-Objective-C
//
//  Created by タケル on 2018/1/24.
//  Copyright © 2018年 タケル. All rights reserved.
//

#import "ViewController.h"
#include <sys/utsname.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (NSInteger)iPhoneModel:(NSString*)string {
    
    NSString *cutiPhone = [[self platformCode] stringByReplacingOccurrencesOfString:[[UIDevice currentDevice] model] withString:@""];
    
    NSRange search = [cutiPhone rangeOfString:@","];
    
    NSString *cutComma = [cutiPhone stringByReplacingCharactersInRange:NSMakeRange(0,search.location) withString:@""];
    
    NSString *iPhoneModel = [cutiPhone stringByReplacingOccurrencesOfString:cutComma withString:@""];
    
    return [iPhoneModel intValue];
}

- (NSString*) platformCode {
    struct utsname systemInfo;
    uname(&systemInfo);
    NSString* platform =  [NSString stringWithCString:systemInfo.machine encoding:NSUTF8StringEncoding];
    
    return platform;
}
- (BOOL) isSupport {
    // http://stackoverflow.com/questions/39564510/check-if-device-supports-uifeedbackgenerator-in-ios-10
    
    // Private API
    
    if ([self iPhoneModel:[self platformCode]] >= 9) {
        if ([[[UIDevice currentDevice] valueForKey:@"_feedbackSupportLevel"] intValue] == 2) {
            return YES;
        }
    }
    
    //    if ([UINotificationFeedbackGenerator class]) {
    //        return YES;
    //    }
    return NO;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

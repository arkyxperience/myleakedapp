//
//  ViewController.m
//  mleakedapp
//
//  Created by Author on 21/02/2016.
//  Copyright © 2016 Organization. All rights reserved.
//

#import "ViewController.h"
#import "BackEndAPI.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    NSString * url = @"https://theserverurl/user/login" ;
    NSDictionary *parameters = @{@"login":@"the-email@mail.com", @"password":@"encrypted-password"} ;
    
    
    
    
    [[BackEndAPI sharedManager] NSURLSessionOperation: @"POST" url: url parameters: parameters success:^(NSURLRequest *request, NSHTTPURLResponse * response, id responseObject) {
        
        // Success
        
    } failure:^(NSError * error) {
        // Failure
    }] ;
    

}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

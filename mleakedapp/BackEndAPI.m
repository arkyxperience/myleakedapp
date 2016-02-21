//
//  BackEndAPI.m
//  mleakedapp
//
//  Created by Author on 21/02/2016.
//  Copyright © 2016 Organization. All rights reserved.
//

#import "BackEndAPI.h"

@implementation BackEndAPI


+ (instancetype)sharedManager {
    static BackEndAPI *sharedMyManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedMyManager = [[self alloc] init];
    });
    return sharedMyManager;
}


- (NSMutableURLRequest *) NSURLSessionOperation:(NSString *) restOperation
                                            url:(NSString *)url
                                     parameters:(id)parameters
                                        success:(void (^)(NSMutableURLRequest *request, NSHTTPURLResponse * response, id responseObject))success
                                        failure:(void (^)(NSError *))failure {
    
    
    NSURLSessionConfiguration *sessionConfig = [NSURLSessionConfiguration defaultSessionConfiguration];
    
    __unused __weak id weakSelf = self ;
    
    // POST
    if ([restOperation isEqualToString:@"POST"]) {
        
        NSURLSession *session = [NSURLSession sessionWithConfiguration: sessionConfig ];
        
        // Create the request
        __block NSMutableURLRequest *request = [[NSMutableURLRequest alloc] initWithURL: [NSURL URLWithString: url ] ];
        [request setValue:@"application/json" forHTTPHeaderField:@"Content-Type"] ;
        request.HTTPMethod = @"POST";

        // Perform operation
        NSURLSessionDataTask * task = [session dataTaskWithRequest: request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
            
            // This generates a leak!!!!
            success(nil, nil, nil) ;
            
        }] ;
        
        [task resume] ;

        

        
        
    }
    
    
    return nil ;
    
    
}


@end

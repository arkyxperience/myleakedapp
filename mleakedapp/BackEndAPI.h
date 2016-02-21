//
//  BackEndAPI.h
//  mleakedapp
//
//  Created by Author on 21/02/2016.
//  Copyright © 2016 Organization. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BackEndAPI : NSObject


+ (id)sharedManager;


- (NSMutableURLRequest *) NSURLSessionOperation:(NSString *) restOperation
                                            url:(NSString *)url
                                     parameters:(id)parameters
                                        success:(void (^)(NSMutableURLRequest *request, NSHTTPURLResponse * response, id responseObject))success
                                        failure:(void (^)(NSError *))failure ;


@end

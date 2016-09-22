//
//  SiteSaver.m
//  SiteSaver
//
//  Created by Christopher Myers on 9/22/16.
//  Copyright © 2016 Dragoman Developers, LLC. All rights reserved.
//

#import "SiteSaver.h"

@implementation SiteSaver {
    

    
}

-(void) fetchURLAsync: (NSArray *)urls {
    
    NSURL* currentURL = urls[0];
    
    NSURLSessionDataTask *downloadTask = [[NSURLSession sharedSession]
                                          dataTaskWithURL:currentURL completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
                                              
                                              
                                          }
                                          
                                          
                                          ];
    
    
}
-(void) downloadCompletionCallback {
    
}
-(NSString*) pathForURL: (NSURL *)url {
    
    NSString* filePath = @"";
    
    
    
    return filePath;

}

@end

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
    
    NSURLSessionConfiguration *configure = [NSURLSessionConfiguration defaultSessionConfiguration];
    
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configure];

    for (NSURL* currentURL in urls) {
        
        NSURLSessionDownloadTask *task = [session downloadTaskWithURL:currentURL completionHandler:^(NSURL *location, NSURLResponse *response, NSError *error) {
            
            if (error) {
                NSLog(@"%@",[error localizedDescription]);
                
                dispatch_async(dispatch_get_main_queue(), ^{
                    
                });
                
            } else {
                NSError *dataError = nil;
                
                // Is the rawHTML necessary?
                NSString *rawHTML = [[NSString alloc] initWithContentsOfURL:currentURL encoding:NSASCIIStringEncoding error:nil];
                
                NSData *downloadedData = [NSData dataWithContentsOfURL:location
                                                               options:kNilOptions
                                                                 error:&dataError];
                if (dataError) {
                    // Something went wrong opening the downloaded data. Figure out what went wrong and handle the error.
                    // Return to the main thread
                    dispatch_async(dispatch_get_main_queue(), ^{
                        NSLog(@"%@",[dataError localizedDescription]);
                        
                    });
                    
                } else {
                    // Get the path of the application's documents directory.
                    NSURL *documentsDirectoryURL = [self documentsDirectoryURL];
                    // Append the desired file name to the documents directory path.
                    
                    
                    // Must figure out how to use a hash table for this...
                    // Must also concatenate "sha1 with urlName
                    NSURL *saveLocation = [documentsDirectoryURL URLByAppendingPathComponent:@"sha1#"];
                    
                    //switch back the the main thread.
                    dispatch_async(dispatch_get_main_queue(), ^{
                        
                    });
                }
            }
        }];
        
        // Tell the download task to resume (start).
        [task resume];
    }
}

- (NSURL *)documentsDirectoryURL
{
    NSError *error = nil;
    NSURL *url = [[NSFileManager defaultManager] URLForDirectory:NSDocumentDirectory
                                                        inDomain:NSUserDomainMask
                                               appropriateForURL:nil
                                                          create:NO
                                                           error:&error];
    if (error) {
        // Figure out what went wrong and handle the error.
    }
    
    return url;
}


-(void) downloadCompletionCallback {
    
    
    
}
-(NSString*) pathForURL: (NSURL *)url {
    
    NSString* filePath = @"";
    
    
    
    return filePath;

}

@end

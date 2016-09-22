//
//  SiteSaver.h
//  SiteSaver
//
//  Created by Christopher Myers on 9/22/16.
//  Copyright © 2016 Dragoman Developers, LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SiteSaver : NSObject



-(void) fetchURLAsync: (NSArray *)urls;
-(void) downloadCompletionCallback;
-(NSString*) pathForURL: (NSURL *)url;

@end

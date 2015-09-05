//
//  main.m
//  TextField-bug
//
//  Created by Nico Schlumprecht on 9/5/15.
//  Copyright (c) 2015 nicos. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "AppDelegate.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSApplication * application = [NSApplication sharedApplication];
        AppDelegate* appDelegate = [[AppDelegate alloc] init];
        
        [application setDelegate:appDelegate];
        [application run];
    }
    
    return EXIT_SUCCESS;
}

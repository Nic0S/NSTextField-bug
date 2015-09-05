//
//  AppDelegate.m
//  TextField-bug
//
//  Created by Nico Schlumprecht on 9/5/15.
//  Copyright (c) 2015 nicos. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    _statusItem = [[NSStatusBar systemStatusBar] statusItemWithLength:NSVariableStatusItemLength];
    _statusItem.title = @"";
    _statusItem.image = [NSImage imageNamed:@"icon.png"];
    
    _statusItem.alternateImage = [NSImage imageNamed:@"icon.png"];
    
    _statusItem.highlightMode = YES;
    
    NSMenu* menu = [[NSMenu alloc] init];
    CustomViewController *c = [[CustomViewController alloc] initWithNibName:@"CustomView" bundle:nil];
    NSMenuItem* item = [[NSMenuItem alloc] init];
    [item setView:[c view]];
    [menu addItem:item];
    
    [_statusItem setMenu:menu];

}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end

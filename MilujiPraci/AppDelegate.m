//
//  AppDelegate.m
//  MilujiPraci
//
//  Created by Jan Mísař on 24.08.14.
//  Copyright (c) 2014 Jan Mísař. All rights reserved.
//

#import "AppDelegate.h"
#import "MFStatusView.h"
#import "MainViewController.h"

@interface AppDelegate()

@property (nonatomic, strong) MFStatusView *statusView;

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    _statusView = [MFStatusView new];
    _statusView.contentViewController = [MainViewController new];
}

@end

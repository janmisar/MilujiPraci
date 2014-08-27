//
//  MainViewController.m
//  MilujiPraci
//
//  Created by Jan Mísař on 24.08.14.
//  Copyright (c) 2014 Jan Mísař. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
    }
    return self;
}

- (IBAction)quitAction:(NSButton *)sender {
    [[NSApplication sharedApplication] terminate:nil];
}
@end

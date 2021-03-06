//
//  MFStatusView.h
//  ComplexStatusItem
//
//  Created by Maxim Pervushin on 11/27/12.
//  Copyright (c) 2012 Maxim Pervushin. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface MFStatusView : NSView

- (void)showPopoverWithViewController:(NSViewController *)viewController;
- (void)hidePopover;

@property (nonatomic, strong) NSViewController *contentViewController;

@end

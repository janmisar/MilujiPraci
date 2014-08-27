//
//  MFStatusView.m
//  ComplexStatusItem
//
//  Created by Maxim Pervushin on 11/27/12.
//  Copyright (c) 2012 Maxim Pervushin. All rights reserved.
//

#import "MFStatusView.h"

#define ImageViewWidth 22

@interface MFStatusView ()

@property (nonatomic, assign) BOOL active;
@property (nonatomic, strong) NSImageView *imageView;
@property (nonatomic, strong) NSStatusItem *statusItem;
@property (nonatomic, strong) NSPopover *popover;

- (void)setActive:(BOOL)active;

@end

@implementation MFStatusView

- (id)init {
    CGFloat height = [NSStatusBar systemStatusBar].thickness;
    self = [super initWithFrame:NSMakeRect(0, 0, height, height)];
    if (self) {
        
        _active = NO;
        
        _imageView = [[NSImageView alloc] initWithFrame:NSMakeRect(3, 3, height-6, height-6)];
        _imageView.image = [NSImage imageNamed:@"statusBarIcon"];
        [self addSubview:_imageView];

        _statusItem = [[NSStatusBar systemStatusBar] statusItemWithLength:(height)];
        _statusItem.view = self;
        
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(hidePopover) name:@"tileClicked" object:nil];
        
    }
    return self;
}

-(void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (void)drawRect:(NSRect)dirtyRect {
    if (_active) {
        [[NSColor selectedMenuItemColor] setFill];
        NSRectFill(dirtyRect);
    } else {
        [[NSColor clearColor] setFill];
        NSRectFill(dirtyRect);
    }
}

- (void)mouseDown:(NSEvent *)theEvent {
    
    if(_popover.isShown) {
        [self hidePopover];
    } else {
        if(_contentViewController)
            [self showPopoverWithViewController:_contentViewController];
    }
}

- (void)mouseUp:(NSEvent *)theEvent {
    
}

- (void)setActive:(BOOL)active {
    _active = active;
    [self setNeedsDisplay:YES];
}

- (void)showPopoverWithViewController:(NSViewController *)viewController {
    if (_popover == nil) {
        _popover = [[NSPopover alloc] init];
        _popover.contentViewController = viewController;
    }
    if (!_popover.isShown) {
        [_popover showRelativeToRect:self.frame
                              ofView:self
                       preferredEdge:NSMinYEdge];
    }
    [self setActive:YES];
}

- (void)hidePopover {
    if (_popover != nil && _popover.isShown) {
        [_popover close];
        [self setActive:NO];
    }
}

@end

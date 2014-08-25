//
//  TileView.m
//  MilujiPraci
//
//  Created by Jan Mísař on 25.08.14.
//  Copyright (c) 2014 Jan Mísař. All rights reserved.
//

#import "TileView.h"

@implementation TileView

- (id)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code here.
    }
    return self;
}

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    [[NSColor greenColor] setFill];
    NSRectFill(dirtyRect);
}

@end

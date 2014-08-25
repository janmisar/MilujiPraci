//
//  TileButton.m
//  MilujiPraci
//
//  Created by Jan Mísař on 25.08.14.
//  Copyright (c) 2014 Jan Mísař. All rights reserved.
//

#import "TileButton.h"

@implementation TileButton

- (id)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code here.
    }
    return self;
}

-(void)awakeFromNib {
    [[self cell] setBackgroundColor:kTileColor];
    
    
    NSColor *color = [NSColor whiteColor];
    NSMutableAttributedString *colorTitle = [[NSMutableAttributedString alloc] initWithAttributedString:[self attributedTitle]];
    NSRange titleRange = NSMakeRange(0, [colorTitle length]);
    [colorTitle addAttribute:NSForegroundColorAttributeName value:color range:titleRange];
    [self setAttributedTitle:colorTitle];
}

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
}

- (void)mouseDown:(NSEvent *)theEvent {
   [[self cell] setBackgroundColor:kTileSelectedColor];
}

- (void)mouseUp:(NSEvent *)theEvent {
    [[self cell] setBackgroundColor:kTileColor];
}

@end

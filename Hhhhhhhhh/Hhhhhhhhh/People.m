//
//  People.m
//  Hhhhhhhhh
//
//  Created by Mac on 16/3/8.
//  Copyright © 2016年 Yh. All rights reserved.
//

#import "People.h"

static People *_shared = nil;
@implementation People

+ (instancetype)sharedSingleInstancetype{
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        _shared = [[self alloc] init];
        
    });
    return _shared;
}

- (instancetype)init{
    
    self = [super init];
    
    if (self) {
        
        self.color = [UIColor redColor];
        
    }
    return self;
}

@end

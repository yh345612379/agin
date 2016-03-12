//
//  People.h
//  Hhhhhhhhh
//
//  Created by Mac on 16/3/8.
//  Copyright © 2016年 Yh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface People : NSObject

+ (instancetype)sharedSingleInstancetype;

@property (nonatomic, strong) UIColor *color;

@end

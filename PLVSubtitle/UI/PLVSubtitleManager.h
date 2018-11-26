//
//  PLVSubtitleManager.h
//  PLVSubtitleDemo
//
//  Created by Bq Lin on 2017/12/4.
//  Copyright © 2017年 POLYV. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PLVSubtitleItem.h"

@interface PLVSubtitleManager : NSObject

@property (nonatomic, strong, readonly) NSMutableArray<PLVSubtitleItem *> *subtitleItems;

// 仅底部字幕
+ (instancetype)managerWithSubtitle:(NSString *)subtitle label:(UILabel *)subtitleLabel error:(NSError **)error;

// 底部字幕+顶部字幕
+ (instancetype)managerWithSubtitle:(NSString *)subtitle label:(UILabel *)subtitleLabel topLabel:(UILabel *)subtitleTopLabel error:(NSError **)error;

- (void)showSubtitleWithTime:(NSTimeInterval)time;

@end

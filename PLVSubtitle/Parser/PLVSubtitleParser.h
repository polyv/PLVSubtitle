//
//  PLVSubtitleParser.h
//  PLVSubtitleDemo
//
//  Created by Bq Lin on 2017/12/4.
//  Copyright © 2017年 POLYV. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PLVSubtitleItem.h"

@interface PLVSubtitleParser : NSObject

@property (nonatomic, strong, readonly) NSMutableArray<PLVSubtitleItem *> *subtitleItems;

+ (instancetype)parserWithSubtitle:(NSString *)content error:(NSError **)error;
- (NSDictionary *)subtitleItemAtTime:(NSTimeInterval)time;

@end

//
//  PLVSubtitleManager.m
//  PLVSubtitleDemo
//
//  Created by Bq Lin on 2017/12/4.
//  Copyright © 2017年 POLYV. All rights reserved.
//

#import "PLVSubtitleManager.h"
#import "PLVSubtitleParser.h"
#import "PLVSubtitleViewModel.h"

@interface PLVSubtitleManager ()

@property (nonatomic, strong) PLVSubtitleParser *parser;
@property (nonatomic, strong) PLVSubtitleViewModel *viewModel;

@end

@implementation PLVSubtitleManager

- (PLVSubtitleViewModel *)viewModel {
	if (!_viewModel) {
		_viewModel = [[PLVSubtitleViewModel alloc] init];
	}
	return _viewModel;
}

- (NSMutableArray *)subtitleItems {
	return self.parser.subtitleItems;
}

+ (instancetype)managerWithSubtitle:(NSString *)subtitle label:(UILabel *)subtitleLabel error:(NSError **)error {
    return [self managerWithSubtitle:subtitle label:subtitleLabel topLabel:nil error:error];
}

+ (instancetype)managerWithSubtitle:(NSString *)subtitle label:(UILabel *)subtitleLabel topLabel:(UILabel *)subtitleTopLabel error:(NSError **)error {
	PLVSubtitleManager *manager = [[PLVSubtitleManager alloc] init];
	manager.parser = [PLVSubtitleParser parserWithSubtitle:subtitle error:error];
	manager.viewModel.subtitleLabel = subtitleLabel;
    manager.viewModel.subtitleTopLabel = subtitleTopLabel;
	return manager;
}

- (void)showSubtitleWithTime:(NSTimeInterval)time {
	NSDictionary * dic = [self.parser subtitleItemAtTime:time];
    
    PLVSubtitleItem * itme = (PLVSubtitleItem *)[dic objectForKey:@"subtitleItem_bot"];
    PLVSubtitleItem * itmeAtTop = (PLVSubtitleItem *)[dic objectForKey:@"subtitleItem_top"];
    
    self.viewModel.subtitleItem = itme;
    self.viewModel.subtitleAtTopItem = itmeAtTop;
}

@end

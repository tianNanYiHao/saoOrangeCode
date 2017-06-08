//
//  SDScanView.h
//  saoOrangeCode
//
//  Created by tianNanYiHao on 2017/6/8.
//  Copyright © 2017年 tianNanYiHao. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SDScanViewDelegate <NSObject>

- (void)SDScanViewOutputMetadataObjects:(NSArray*)metadataObjs;

@end

@interface SDScanView : UIView

@property (nonatomic, assign) id<SDScanViewDelegate>delegate;


@end

//
//  ViewController.m
//  saoOrangeCode
//
//  Created by tianNanYiHao on 2017/6/7.
//  Copyright © 2017年 tianNanYiHao. All rights reserved.
//

#import "ViewController.h"
#import <AVFoundation/AVFoundation.h>


#import "SDScanView.h"



@interface ViewController ()<SDScanViewDelegate>
{
    
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    SDScanView *scanview = [[SDScanView alloc] init];
    scanview.delegate = self;
    [self.view addSubview:scanview];

    
    
    
}

- (void)SDScanViewOutputMetadataObjects:(NSArray *)metadataObjs{
    //
    AVMetadataMachineReadableCodeObject *obj = [metadataObjs objectAtIndex:0];
    NSLog(@"码数据:%@",obj.stringValue);
    NSLog(@"码类型:%@",obj.type);
    
    
}


@end

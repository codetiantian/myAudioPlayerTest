//
//  ViewController.m
//  1-录音
//
//  Created by apple on 16/3/1.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "ViewController.h"
#import <AVFoundation/AVFoundation.h>

@interface ViewController ()

@property (weak, nonatomic) AVAudioRecorder *recorde;
@property (weak, nonatomic) AVAudioPlayer *player;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// 开始录音
- (void)start
{
    //1.创建录音文件地址
    NSURL *url = [NSURL URLWithString:@"file:///Users/apple/Desktop/123.caf"];
    //2.创建录音对象
    AVAudioRecorder *recorde = [[AVAudioRecorder alloc] initWithURL:url settings:nil error:nil];
    
    self.recorde = recorde;
    //  3.准备录音
    [recorde prepareToRecord];
    
    //4.开始录音
    [recorde record];
    
}

//  结束录音
- (void)stop
{
    [self.recorde stop];
}

//  播放录音
- (void)starSong
{
    //1.创建录音文件地址
    NSURL *url = [NSURL URLWithString:@"file:///Users/apple/Desktop/123.caf"];
    AVAudioPlayer *player = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:nil];
    self.player = player;
    [player play];
}

- (void)stopSong
{
    [self.player stop];
}

@end

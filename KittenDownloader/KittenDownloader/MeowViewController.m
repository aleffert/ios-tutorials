//
//  MeowViewController.m
//  KittenDownloader
//
//  Created by Akiva Leffert on 4/27/15.
//  Copyright (c) 2015 Akiva Leffert. All rights reserved.
//

#import <AudioToolbox/AudioToolbox.h>

#import "MeowViewController.h"

@interface MeowViewController ()

@end

@implementation MeowViewController

- (void)viewDidLoad {
    SEL meowTapped = @selector(meowTapped:);
    
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];
    
    UIButton* button = [[UIButton alloc] init];
    [button setTitle:@"Play Meow" forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:@"paws"] forState:UIControlStateNormal];
    [button addTarget:self action:meowTapped forControlEvents:UIControlEventTouchUpInside];

    button.frame = CGRectMake(100, 100, 150, 150);
    
    [self.view addSubview:button];
}

- (void)meowTapped:(id)sender {
    [self playSound];
}

- (void)playSound {
    NSString *soundPath = [[NSBundle mainBundle] pathForResource:@"meow" ofType:@"m4a"];
    SystemSoundID soundID;
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)[NSURL fileURLWithPath: soundPath], &soundID);
    AudioServicesPlaySystemSound (soundID);
}

@end

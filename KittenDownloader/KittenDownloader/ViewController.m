//
//  ViewController.m
//  KittenDownloader
//
//  Created by Akiva Leffert on 3/16/15.
//  Copyright (c) 2015 Akiva Leffert. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nil bundle:nil];
    if(self != nil) {
        self.navigationItem.title = @"KITTEN!";
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if(self != nil) {
        self.navigationItem.title = @"KITTEN!";
    }
    return self;
}

- (IBAction)kittenDownloadTapped:(id)sender {
    NSURLSession* session = [NSURLSession sharedSession];
    NSURL* url = [[NSURL alloc] initWithString:@"http://placekitten.com/g/300/300"];
    NSURLRequest* request = [[NSURLRequest alloc] initWithURL:url];
    
    NSURLSessionDataTask* task = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        UIImage* image = [[UIImage alloc] initWithData:data];
        
        dispatch_async(dispatch_get_main_queue(), ^{
            self.kittenView.image = image;
        });
        
    }];
    [task resume];
}


@end

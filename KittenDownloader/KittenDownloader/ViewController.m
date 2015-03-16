//
//  ViewController.m
//  KittenDownloader
//
//  Created by Akiva Leffert on 3/16/15.
//  Copyright (c) 2015 Akiva Leffert. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (IBAction)kittenDownloadTapped:(id)sender {
    NSURLSession* session = [NSURLSession sharedSession];
    NSURL* url = [[NSURL alloc] initWithString:@"http://placekitten.com/g/300/300"];
    NSURLRequest* request = [[NSURLRequest alloc] initWithURL:url];
    
    
    [session downloadTaskWithRequest:request completionHandler:^(NSURL *location, NSURLResponse *response, NSError *error) {
        // TODO Deal with the response
    }];
}

- (void)testMethod {
    
}


@end

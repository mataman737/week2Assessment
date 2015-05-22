//
//  WikipediaViewController.m
//  wk2_assessment
//
//  Created by Stephen T. Mata on 5/22/15.
//  Copyright (c) 2015 Stephen T. Mata. All rights reserved.
//

#import "WikipediaViewController.h"
#import "DetailViewController.h"
#import "City.h"

@interface WikipediaViewController () <UIWebViewDelegate>
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;
@property (weak, nonatomic) IBOutlet UIWebView *wikipediaWeb;
@property NSArray *websites;
@property (weak, nonatomic) IBOutlet UILabel *cityLabel;
@property NSString *lA;
@property NSString *sF;
@property NSString *nY;
@property NSString *miami;

@end

@implementation WikipediaViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.lA = @"Los Angeles";
    self.sF = @"San Francisco";
    self.nY = @"New York";
    self.miami = @"Miami";

    self.cityLabel.text = self.textTitle;


    //WebView
    self.wikipediaWeb.delegate = self;

    if (self.cityLabel.text == self.lA) {
        NSURL *url = [NSURL URLWithString:@"http://en.wikipedia.org/wiki/Los_Angeles"];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        [self.wikipediaWeb loadRequest:request];
    } else if (self.cityLabel.text == self.sF) {
        NSURL *url = [NSURL URLWithString:@"http://en.wikipedia.org/wiki/San_Francisco"];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        [self.wikipediaWeb loadRequest:request];
    } else if (self.cityLabel.text == self.nY) {
        NSURL *url = [NSURL URLWithString:@"http://en.wikipedia.org/wiki/Manhattan"];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        [self.wikipediaWeb loadRequest:request];
    } else {
        NSURL *url = [NSURL URLWithString:@"http://en.wikipedia.org/wiki/Miami"];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        [self.wikipediaWeb loadRequest:request];
    }

}




-(void)webViewDidStartLoad:(UIWebView *)webView{
    [self.activityIndicator startAnimating];
}

//Hide Activitiy Indicator Once Web Page Loads
-(void)webViewDidFinishLoad:(UIWebView *)webView{
    [self.activityIndicator stopAnimating];
    self.activityIndicator.hidden = TRUE;
}

//Dismiss Modal

- (IBAction)dismissModal:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end

//
//  DetailViewController.h
//  navicatorController
//
//  Created by SDT-1 on 2014. 1. 10..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController
@property (strong) NSString *urlStr;
@property (weak, nonatomic) IBOutlet UIWebView *webView;
@end

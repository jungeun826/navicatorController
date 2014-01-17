//
//  ViewController.m
//  navicatorController
//
//  Created by SDT-1 on 2014. 1. 10..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import "ViewController.h"
#import "DetailViewController.h"
@interface ViewController ()<UITableViewDataSource, UITableViewDelegate>{
    NSArray *urlData;
}
@property (weak, nonatomic) IBOutlet UITableView *table;

@end

@implementation ViewController
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [urlData count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"URL_CELL" forIndexPath:indexPath];
    cell.textLabel.text = urlData[indexPath.row];
    
    return cell;
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    DetailViewController *detailVC = segue.destinationViewController;
    UITableViewCell *selectedCell = (UITableViewCell *)sender;
    NSIndexPath *selectedIndexPath = [self.table indexPathForCell:selectedCell];
    detailVC.urlStr = urlData[selectedIndexPath.row];
}
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    urlData = @[@"apple.com", @"google.com", @"daum.net", @"naver.com"];
}
-(void)viewWillAppear:(BOOL)animated{
    self.navigationController.navigationBarHidden = YES;
}
-(void)viewWillDisappear:(BOOL)animated{
    self.navigationController.navigationBarHidden = NO;
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

//
//  ViewController.m
//  StringChecker
//
//  Created by 奇鹭 on 2018/3/30.
//  Copyright © 2018年 xieyongxu. All rights reserved.
//

#import "ViewController.h"
#import "StringChecker.h"
@interface ViewController ()<UITextViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self buildTextView];
}

- (void)buildTextView
{
    UITextView *textView = [UITextView new];
    
    textView.layer.borderColor = [[UIColor grayColor]CGColor];
    
    textView.layer.borderWidth = 1;
    
    textView.layer.cornerRadius = 10;
    
    textView.frame = CGRectMake(100, 100, 250, 100);
    
    textView.delegate = self;
    
    [self.view addSubview:textView];
}

- (void)textViewDidChange:(UITextView *)textView
{
    [StringChecker checkString:textView.text];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

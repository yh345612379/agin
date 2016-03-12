//
//  ThirdViewController.m
//  Hhhhhhhhh
//
//  Created by Mac on 16/3/8.
//  Copyright © 2016年 Yh. All rights reserved.
//

#import "ThirdViewController.h"
#import "People.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (void)dealloc{
    
    [[People sharedSingleInstancetype] removeObserver:self forKeyPath:@"color"];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.title = @"Third";
    //    建立观察者和被观察者的联系
    People *uesr = [People sharedSingleInstancetype];
    
    self.view.backgroundColor = uesr.color;
    
    [uesr addObserver:self forKeyPath:@"color" options:NSKeyValueObservingOptionNew context:nil];

    
}
- (IBAction)changeButton:(id)sender {
    
    People *user = [People sharedSingleInstancetype];
    
    user.color = [UIColor yellowColor];
    
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change context:(void *)context{
    
    self.view.backgroundColor = (UIColor *)change[@"new"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

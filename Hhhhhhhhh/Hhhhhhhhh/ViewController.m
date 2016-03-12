//
//  ViewController.m
//  Hhhhhhhhh
//
//  Created by Mac on 16/3/8.
//  Copyright © 2016年 Yh. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
#import "People.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.title = @"first";
  //    建立观察者和被观察者的联系
    People *uesr = [People sharedSingleInstancetype];
    
    [uesr addObserver:self forKeyPath:@"color" options:NSKeyValueObservingOptionNew context:nil];

}
- (IBAction)changeButton:(id)sender {
    
    People *user = [People sharedSingleInstancetype];
    
    user.color = [UIColor yellowColor];
    
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change context:(void *)context{
    
    self.view.backgroundColor = (UIColor *)change[@"new"];
    
}

//- (void)dealloc{
//    
//    [[People sharedSingleInstancetype] removeObserver:self forKeyPath:@"color"];
//    
//}

- (IBAction)nextButton:(id)sender {
    
    [self.navigationController pushViewController:[SecondViewController new] animated:YES];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

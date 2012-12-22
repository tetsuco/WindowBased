//
//  NewViewController.m
//  WindowBased
//
//  Created by tetsuco on 11/09/01.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "NewViewController.h"


@implementation NewViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    // ボタンを追加
    UIButton *bt = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    bt.frame = CGRectMake(110, 150, 100, 30);
    [bt setTitle:@"遷移する" forState:UIControlStateNormal];
    [bt addTarget:self action:@selector(buttonAction:)forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:bt];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


// ボタンアクション
-(void)buttonAction:(UIButton*)button
{
    SecondViewController *secondViewController;
    secondViewController = [[SecondViewController alloc]
                            initWithNibName:@"SecondViewController"
                            bundle:nil];
    
    [self.navigationController pushViewController:secondViewController animated:YES];
}

@end

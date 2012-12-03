//
//  ViewController.m
//  WS Pruebas
//
//  Created by juanfran on 26/11/12.
//  Copyright (c) 2012 juanfran. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction) pushButton:(id)sender{
    
    /*
    UIAlertView *message = [[UIAlertView alloc] initWithTitle:@"Hello World!"
                                                      message:@"This is your first UIAlertview message."
                                                     delegate:nil
                                            cancelButtonTitle:@"OK"
                                            otherButtonTitles:nil];
    [message show];
    */
    
    NSLog(@"Empezamos conexión");
    
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_async(queue, ^{
        NSError *error = nil;
        NSURL *url = [NSURL URLWithString:@"http://151.236.217.87/pruebasios/cliente.php/JUANFRA"];
        NSString *json = [NSString stringWithContentsOfURL:url
                                                  encoding:NSASCIIStringEncoding
                                                     error:&error];
        NSLog(@"\nJSON: %@ \n Error: %@", json, error);
    });
    
    
    
    
    NSLog(@"Acaba conexión");
}

@end

//
//  ViewController.m
//  BaseDeDatos
//
//  Created by juanfran on 12/11/12.
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
    
     /*
    
     UIAlertView *alert = [[UIAlertView alloc]initWithTitle: @"Alert Title here"
     message: @"Alert Message here"
     delegate: self
     cancelButtonTitle:@"Cancel"
     otherButtonTitles:@"OK",nil];
     
     
     [alert show];
    
    */
     
    NSLog(@"Hola pimpollito");
   
    //Creamos el Request
    NSString *requestString = @""
    ""
    ""
    ""
    " "
    ""
    "";
    
    //Calculamos la longitud del request
    NSString *msgLength = [NSString stringWithFormat:@"%d", [requestString length]];
    
    //La URL del servicio
    NSURL *url = [NSURL URLWithString:@"http://www.ejemplo.com/servicio.asmx"];
    
    //Inicializamos el request
    ASIHTTPRequest *request = [ASIHTTPRequest requestWithURL:url];
    
    //Configuramos los Headers del Request
    [request addRequestHeader:@"Content-Type" value:@"text/xml; charset=utf-8"];
    [request addRequestHeader:@"SOAPAction" value:@"http://www.ejemplo.com/consulta"];
    [request addRequestHeader:@"Content-Length" value:msgLength];
    
    //El Body del Request
    [request setPostBody:(NSMutableData*)[requestString dataUsingEncoding:NSUTF8StringEncoding]];
    
    //Indicamos quien es el delegado del Request
    [request setDelegate:self];
    
    //Ponemos en marcha el request
    [request startSynchronous]; //tambien podrías usar [request startAsynchronous] si necesitas que el usuario de la app pueda hacer otras cosas mientras;

    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

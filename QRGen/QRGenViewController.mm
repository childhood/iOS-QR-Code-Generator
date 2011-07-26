//
//  QRGenViewController.m
//  QRGen
//
//  Created by Patrick Hogan on 7/26/11.
//  Copyright 2011 Kuapay LLC. All rights reserved.
//

#import "QRGenViewController.h"
#import "FileManager.h"

#import "qr_draw_png.h"
#import "QR_Encode.h"

@implementation QRGenViewController
@synthesize imageView;


- (void)viewDidLoad
{
 [super viewDidLoad];
 
 char filename [ [[[FileManager sharedFileManager] qRFile] length] + 1];
 [[[FileManager sharedFileManager] qRFile] getCString:filename maxLength:[[[FileManager sharedFileManager] qRFile] length] + 1 encoding:NSUTF8StringEncoding];
 
 NSString *sampleString = [NSString stringWithString:@"http://www.kuapay.com"];
 
 char str [[sampleString length] + 1];
 [sampleString getCString:str maxLength:[sampleString length] + 1 encoding:NSUTF8StringEncoding];
 
 CQR_Encode encoder;
 encoder.EncodeData(1, 0, true, -1, str);
 
 QRDrawPNG qrDrawPNG;
 qrDrawPNG.draw(filename, 4, encoder.m_nSymbleSize, encoder.m_byModuleData, NULL);
 
 NSData *data = [[NSData alloc] initWithContentsOfFile:[[FileManager sharedFileManager] qRFile]];
 UIImage *image = [UIImage imageWithData:data];
 [data release];
 
 self.imageView.image = image;
}



- (void)viewDidUnload
{
 [super viewDidUnload];
 self.imageView = nil;
}



- (void)dealloc
{
 [super dealloc];
 [imageView release];
}


@end

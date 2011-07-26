//
//  QRGenAppDelegate.h
//  QRGen
//
//  Created by Patrick Hogan on 7/26/11.
//  Copyright 2011 Kuapay LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@class QRGenViewController;

@interface QRGenAppDelegate : NSObject <UIApplicationDelegate> 
{
}
@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet QRGenViewController *viewController;

@end

//
//  CocoaTouchApp02AppDelegate.h
//  CocoaTouchApp02
//
//  Created by Brian Pfeil on 4/29/08.
//  Copyright __MyCompanyName__ 2008. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CocoaTouchApp02AppDelegate : NSObject <UIApplicationDelegate> {
	IBOutlet UIWindow *window;
	UIWebView *webView;
	UIView *greenView;
	UITextField *textField;
	UIButton *button;
}
-(void)addBlueView;

@property (nonatomic, retain) UIWindow *window;
@property (nonatomic, retain) UIWebView *webView;
@property (nonatomic, retain) UIView *greenView;
@property (nonatomic, retain) UITextField *textField;
@property (nonatomic, retain) UIButton *button;

@end


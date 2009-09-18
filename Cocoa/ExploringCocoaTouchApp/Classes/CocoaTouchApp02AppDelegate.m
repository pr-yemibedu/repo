//
//  CocoaTouchApp02AppDelegate.m
//  CocoaTouchApp02
//
//  Created by Brian Pfeil on 4/29/08.
//  Copyright __MyCompanyName__ 2008. All rights reserved.
//

#import "CocoaTouchApp02AppDelegate.h"

@implementation CocoaTouchApp02AppDelegate

@synthesize window;
@synthesize webView;
@synthesize greenView;
@synthesize textField;
@synthesize button;

- (void)applicationDidFinishLaunching:(UIApplication *)application {	
	// Override point for customization after app launch
	CGRect applicationFrame = [[UIScreen mainScreen] applicationFrame];
	
	self.webView = [[UIWebView alloc] initWithFrame:applicationFrame];
	[self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://isfa.brianpfeil.com"]]];
	[self.window addSubview:self.webView];
	
	self.greenView = [[UIView alloc] initWithFrame:applicationFrame];
	self.greenView.backgroundColor = [UIColor greenColor];
	[self.window addSubview:self.greenView]; // every subview added hides the previous if dimensions are the same
	
	self.textField = [[UITextField alloc] initWithFrame:applicationFrame];
	[self.textField setText:[self.webView stringByEvaluatingJavaScriptFromString:@"document.toString()"]];
	[self.window addSubview:textField];
	
	self.button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	self.button.frame = applicationFrame;
	[self.button contentRectForBounds:applicationFrame];
	[self.button titleRectForContentRect:applicationFrame];
	[self.button setTitle:@"Click Me" forState: UIControlStateNormal];
	[self.button addTarget:self action:@selector( addBlueView ) forControlEvents:UIControlEventTouchUpInside];
	[self.window addSubview:button];
	
	[self.window makeKeyWindow];
	
}

- (void)addBlueView {
	CGRect applicationFrame = [[UIScreen mainScreen] applicationFrame];
	CGRect viewFrame = CGRectMake(applicationFrame.origin.x, applicationFrame.origin.y, applicationFrame.size.width, applicationFrame.size.height / 2.0);
	UIView *blueView = [[[UIView alloc] initWithFrame:viewFrame] autorelease];
	blueView.backgroundColor = [UIColor blueColor];
	[self.window addSubview:blueView];
}

- (void)dealloc {
	[window release];
	[super dealloc];
}

@end

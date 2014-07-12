//
//  JTSViewController.h
//  JTSImageVC
//
//  Created by Jared on 3/29/14.
//  Copyright (c) 2014 Nice Boy, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "YLImageView.h"

@interface JTSViewController : UIViewController

@property (weak, nonatomic) IBOutlet YLImageView *bigGifImageView;
@property (weak, nonatomic) IBOutlet YLImageView *smallGifImageView;
@property (weak, nonatomic) IBOutlet YLImageView *jpgImageView;

@end

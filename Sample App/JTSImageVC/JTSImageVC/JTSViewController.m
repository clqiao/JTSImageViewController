//
//  JTSViewController.m
//  JTSImageVC
//
//  Created by Jared on 3/29/14.
//  Copyright (c) 2014 Nice Boy, LLC. All rights reserved.
//

#import "JTSViewController.h"

#import "JTSImageViewController.h"
#import "JTSImageInfo.h"
#import "YLGIFImage.h"

@interface JTSViewController ()

@end

@implementation JTSViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.bigGifImageView.image = [YLGIFImage imageNamed:@"joy.gif"];
    self.smallGifImageView.image = [YLGIFImage imageNamed:@"demo2.gif"];
    self.jpgImageView.image = [YLGIFImage imageNamed:@"demo3.jpg"];
    
    // add single tap for big gif image view
    UITapGestureRecognizer *singleTapForBigGif = [[UITapGestureRecognizer alloc] initWithTarget: self action:@selector(singleTapActionForBigGif)];
    singleTapForBigGif.numberOfTapsRequired = 1;
    [self.bigGifImageView addGestureRecognizer:singleTapForBigGif];
    
    // add single tap for small gif image view
    UITapGestureRecognizer *singleTapForSmallGif = [[UITapGestureRecognizer alloc] initWithTarget: self action:@selector(singleTapActionForSmallGif)];
    singleTapForSmallGif.numberOfTapsRequired = 1;
    [self.smallGifImageView addGestureRecognizer:singleTapForSmallGif];
    
    // add single tap for jpg image view
    UITapGestureRecognizer *singleTapForJpg = [[UITapGestureRecognizer alloc] initWithTarget: self action:@selector(singleTapActionForJpg)];
    singleTapForJpg.numberOfTapsRequired = 1;
    [self.jpgImageView addGestureRecognizer:singleTapForJpg];
}

- (NSUInteger)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskPortrait | UIInterfaceOrientationMaskLandscapeLeft | UIInterfaceOrientationMaskLandscapeRight;
}

/*
- (void)bigButtonTapped:(id)sender {
    
    // Create image info
    JTSImageInfo *imageInfo = [[JTSImageInfo alloc] init];
    imageInfo.image = [self.bigImageButton backgroundImageForState:UIControlStateNormal];
    imageInfo.referenceRect = self.bigImageButton.frame;
    imageInfo.referenceView = self.bigImageButton.superview;
    
    // Setup view controller
    JTSImageViewController *imageViewer = [[JTSImageViewController alloc]
                                           initWithImageInfo:imageInfo
                                           mode:JTSImageViewControllerMode_Image
                                           backgroundStyle:JTSImageViewControllerBackgroundStyle_ScaledDimmedBlurred];
    
    // Present the view controller.
    [imageViewer showFromViewController:self transition:JTSImageViewControllerTransition_FromOriginalPosition];
}
*/

- (void)singleTapActionForBigGif {
    // Create image info
    JTSImageInfo *imageInfo = [[JTSImageInfo alloc] init];
    imageInfo.image = (YLGIFImage *)[YLGIFImage imageNamed:@"joy.gif"];
    imageInfo.referenceRect = self.bigGifImageView.frame;
    imageInfo.referenceView = self.bigGifImageView.superview;
    
    // Setup view controller
    JTSImageViewController *imageViewer = [[JTSImageViewController alloc]
                                           initWithImageInfo:imageInfo
                                           mode:JTSImageViewControllerMode_Image
                                           backgroundStyle:JTSImageViewControllerBackgroundStyle_ScaledDimmedBlurred];
    
    // Present the view controller.
    [imageViewer showFromViewController:self transition:JTSImageViewControllerTransition_FromOriginalPosition];
}

- (void)singleTapActionForSmallGif {
    // Create image info
    JTSImageInfo *imageInfo = [[JTSImageInfo alloc] init];
    imageInfo.image = (YLGIFImage *)[YLGIFImage imageNamed:@"demo2.gif"];
    imageInfo.referenceRect = self.smallGifImageView.frame;
    imageInfo.referenceView = self.smallGifImageView.superview;
    
    // Setup view controller
    JTSImageViewController *imageViewer = [[JTSImageViewController alloc]
                                           initWithImageInfo:imageInfo
                                           mode:JTSImageViewControllerMode_Image
                                           backgroundStyle:JTSImageViewControllerBackgroundStyle_ScaledDimmedBlurred];
    
    // Present the view controller.
    [imageViewer showFromViewController:self transition:JTSImageViewControllerTransition_FromOriginalPosition];
}

- (void)singleTapActionForJpg {
    // Create image info
    JTSImageInfo *imageInfo = [[JTSImageInfo alloc] init];
    imageInfo.image = (YLGIFImage *)[YLGIFImage imageNamed:@"demo3.jpg"];
    imageInfo.referenceRect = self.jpgImageView.frame;
    imageInfo.referenceView = self.jpgImageView.superview;
    
    // Setup view controller
    JTSImageViewController *imageViewer = [[JTSImageViewController alloc]
                                           initWithImageInfo:imageInfo
                                           mode:JTSImageViewControllerMode_Image
                                           backgroundStyle:JTSImageViewControllerBackgroundStyle_ScaledDimmedBlurred];
    
    // Present the view controller.
    [imageViewer showFromViewController:self transition:JTSImageViewControllerTransition_FromOriginalPosition];
}

@end






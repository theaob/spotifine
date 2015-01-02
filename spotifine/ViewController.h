//
//  ViewController.h
//  spotifine
//
//  Created by Onur Baykal on 3.12.2014.
//  Copyright (c) 2014 Onur Baykal. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <SpeechKit/SpeechKit.h>
#import <Spotify/Spotify.h>

@interface ViewController : UIViewController

@property (nonatomic, strong) SPTSession * m_SpotifySession;

@end


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

@interface ViewController : UIViewController <SpeechKitDelegate, SKRecognizerDelegate, SPTAudioStreamingPlaybackDelegate>


@property SKRecognizer * m_Recognizer;

@property (nonatomic, strong) SPTSession *session;
@property (nonatomic, strong) SPTAudioStreamingController *player;

@end


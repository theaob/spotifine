//
//  ViewController.m
//  spotifine
//
//  Created by Onur Baykal on 3.12.2014.
//  Copyright (c) 2014 Onur Baykal. All rights reserved.
//

#import "ViewController.h"

const unsigned char SpeechKitApplicationKey[] = {0xa3, 0x99, 0xa7, 0x0f, 0x59, 0x8f, 0x98, 0xe9, 0x85, 0x76, 0x00,
                                                 0x70, 0xdd, 0xe2, 0xbc, 0x3c, 0x5b, 0xdd, 0x1f, 0x1a, 0x55, 0xb9,
                                                 0x4b, 0xb1, 0x9d, 0xf1, 0x8e, 0x88, 0x2d, 0xe5, 0x00, 0xd0, 0x7e,
                                                 0xa7, 0xdf, 0xd7, 0x36, 0x77, 0xc1, 0xbc, 0xee, 0xc1, 0x2c, 0xcb,
                                                 0xa3, 0xe8, 0x07, 0xfe, 0xc6, 0x26, 0x18, 0x1b, 0xdf, 0x63, 0xcc,
                                                 0x7d, 0x54, 0x5a, 0x05, 0x82, 0x40, 0x05, 0x52, 0xbe};

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    // Do any additional setup after loading the view, typically from a nib.
    [SpeechKit setupWithID:@"NMDPTRIAL_theaob20141030122351"
                      host:@"sandbox.nmdp.nuancemobility.net"
                      port:443
                    useSSL:NO
                  delegate:nil];
    
   
}
- (IBAction)recordButtonPressed:(id)sender
{
    if(self.m_Recognizer)
    {
        self.m_Recognizer = nil;
    }
    
    self.m_Recognizer = [[SKRecognizer alloc] initWithType:SKDictationRecognizerType
                                                 detection:SKShortEndOfSpeechDetection
                                                  language:@"eng-USA" delegate:self];
}

- (void)recognizer:(SKRecognizer *)recognizer didFinishWithResults:(SKRecognition *)results
{
    NSArray * aResults = [results results];
    
    for (int i = 0; i < [aResults count]; i++)
    {
        NSLog(@"Result %i %@", i, [aResults objectAtIndex:i]);
    }
}

- (void)recognizer:(SKRecognizer *)recognizer didFinishWithError:(NSError *)error suggestion:(NSString *)suggestion
{
    NSLog(@"Error: %@ Suggestion: %@", [error description], suggestion);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

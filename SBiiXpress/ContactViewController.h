//
//  ContactViewController.h
//  SBiiXpress
//
//  Created by Kévin Failleau on 26/01/2017.
//  Copyright © 2017 SBiiXpress. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

@interface ContactViewController : UIViewController <MFMailComposeViewControllerDelegate, MFMessageComposeViewControllerDelegate>
- (IBAction)btnBureau:(UIButton *)sender;
- (IBAction)btnPortable:(UIButton *)sender;
- (IBAction)btnMail:(id)sender;
- (IBAction)btnSMS:(UIButton *)sender;

@end

//
//  ContactViewController.m
//  SBiiXpress
//
//  Created by Kévin Failleau on 26/01/2017.
//  Copyright © 2017 SBiiXpress. All rights reserved.
//

#import "ContactViewController.h"
@interface ContactViewController ()

@end

@implementation ContactViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnBureau:(UIButton *)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tel:0244023942"]];
}

- (IBAction)btnPortable:(UIButton *)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tel:0641619879"]];
}

- (IBAction)btnMail:(UIButton *)sender {
    MFMailComposeViewController *mailcontroller = [[MFMailComposeViewController alloc] init];
    [mailcontroller setMailComposeDelegate:self];
    NSString *email = @"sbiixpress@gmail.com";
    NSArray *emailArray = [[NSArray alloc] initWithObjects:email, nil];
    [mailcontroller setToRecipients:emailArray];
    [mailcontroller setSubject:@"Contact via mobile"];
    [self presentViewController:mailcontroller animated:YES completion:nil];
}

- (IBAction)btnSMS:(UIButton *)sender {
    
    MFMessageComposeViewController *sms = [[MFMessageComposeViewController alloc] init];
    sms.body = @"Rédigez votre message";
    sms.recipients = @[@"0641619879"];
    sms.messageComposeDelegate = self;
    [self presentViewController:sms animated:NO completion:nil];
}

- (void)messageComposeViewController:(MFMessageComposeViewController *)controller didFinishWithResult:(MessageComposeResult)result{
    switch(result)
    {
        case MessageComposeResultCancelled:
            [self dismissViewControllerAnimated:YES completion:nil];
            NSLog(@"L'utilisateur a annulé l'envoi de son SMS");
            break;
        case MessageComposeResultSent:
            [self dismissViewControllerAnimated:YES completion:nil];
            NSLog((@"Le message a bien été envoyé"));
            break;
        default:
            break;
    }
}

-(void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error{ [self dismissViewControllerAnimated:YES completion:nil];
}
@end

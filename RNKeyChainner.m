//
//  RNKeyChainner.m
//  VIPMobileBanking
//
//  Created by Epic Lanka on 4/3/18.
//  Copyright © 2018 Facebook. All rights reserved.
//

#import "RNKeyChainner.h"
#import "SAMKeychain.h"
#import <UIKit/UIKit.h>

@implementation RNKeyChainner

RCT_EXPORT_MODULE();

- (dispatch_queue_t)methodQueue
{
  return dispatch_get_main_queue();
}

RCT_EXPORT_METHOD(getDeviceIdResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
  NSString *appName=[[[NSBundle mainBundle] infoDictionary] objectForKey:(NSString*)kCFBundleNameKey];
  NSString *strApplicationUUID = [SAMKeychain passwordForService:appName account:@"MY_KEY"];
  if (strApplicationUUID == nil) {
    strApplicationUUID  = [[[UIDevice currentDevice] identifierForVendor] UUIDString];
    [SAMKeychain setPassword:strApplicationUUID forService:appName account:@"MY_KEY"];
  }
  return resolve(strApplicationUUID);
  
}
@end

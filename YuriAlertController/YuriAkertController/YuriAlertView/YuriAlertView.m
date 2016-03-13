//
//  YuriAlertView.m
//  AlertViewAnctionSheetBlock
//
//  Created by 张晓飞 on 15/9/19.
//  Copyright (c) 2015年 张晓飞. All rights reserved.
//

#define MyAlertViewKey @"MyAlertViewKey"
#define TIPTITLE          @"提示"
#define CANCELBUTTON      @"确定"

#import <objc/runtime.h>
#import "YuriAlertView.h"

@implementation YuriAlertView

#pragma mark - 普通alertView
- (instancetype)initCustomTipAlertWithMessage:(NSString *)message {
    self = [super initWithTitle:TIPTITLE message:message delegate:nil cancelButtonTitle:CANCELBUTTON otherButtonTitles:nil, nil];
    return self;
}

- (instancetype)initCustomTipAlertWithMessage:(NSString *)message completion:(AlertViewChoiceCompletionBlock)completion
{
    
    self = [super initWithTitle:TIPTITLE message:message delegate:self cancelButtonTitle:CANCELBUTTON otherButtonTitles:nil];
    objc_setAssociatedObject(self, MyAlertViewKey, completion, OBJC_ASSOCIATION_COPY);

    return self;
    
}

#pragma mark - 可选择alertView
- (instancetype)initChoiceTipAlertWithMessage:(NSString *)message completion:(AlertViewChoiceCompletionBlock)completion
{
    self = [self initChoiceTipAlertWithMessage:message doneTitle:CANCELBUTTON completion:completion];
    return self;
}

- (instancetype)initChoiceTipAlertWithMessage:(NSString *)message doneTitle:(NSString *)doneTitile completion:(AlertViewChoiceCompletionBlock)completion
{
   self = [self initChoiceTipAlertWithMessage:message title:TIPTITLE doneTitle:doneTitile completion:completion];
    return self;
}

- (instancetype)initChoiceTipAlertWithMessage:(NSString *)message title:(NSString *)title doneTitle:(NSString *)doneTitle completion:(AlertViewChoiceCompletionBlock)completion {
    
    self = [super initWithTitle:title message:message delegate:self cancelButtonTitle:@"取消" otherButtonTitles:doneTitle, nil];
    objc_setAssociatedObject(self, MyAlertViewKey, completion, OBJC_ASSOCIATION_COPY);
    return self;
}

- (instancetype)initChoiceTipAlertWithMessage:(NSString *)message button1Title:(NSString *)title1 button2Title:(NSString *)title2 completion:(AlertViewChoiceCompletionBlock)completion
{
    self = [super initWithTitle:TIPTITLE message:message delegate:self cancelButtonTitle:nil otherButtonTitles:title1, title2, nil];
    objc_setAssociatedObject(self, MyAlertViewKey, completion, OBJC_ASSOCIATION_COPY);
    return self;
}

- (instancetype)initChoiceTipAlertWithMessage:(NSString *)message title:(NSString *)title button1Title:(NSString *)button1Title button2Title:(NSString *)button2Title completion:(AlertViewChoiceCompletionBlock)completion {
    
    self = [super initWithTitle:title message:message delegate:self cancelButtonTitle:nil otherButtonTitles:button1Title, button2Title, nil];
    objc_setAssociatedObject(self, MyAlertViewKey, completion, OBJC_ASSOCIATION_COPY);
    return self;
    
}

#pragma mark - 三层选择alertView
- (instancetype)initChoiceTipAlertWithMessage:(NSString *)message button1Title:(NSString *)title1 button2Title:(NSString *)title2 button3Title:(NSString *)title3 completion:(AlertViewChoiceCompletionBlock)completion {
    
    self = [super initWithTitle:TIPTITLE message:message delegate:self cancelButtonTitle:nil otherButtonTitles:title1, title2, title3, nil];
    objc_setAssociatedObject(self, MyAlertViewKey, completion, OBJC_ASSOCIATION_COPY);
    return self;
    
}

#pragma mark - UIAlertViewDelegate
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    AlertViewChoiceCompletionBlock block = objc_getAssociatedObject(alertView, MyAlertViewKey);
    
    if (block) {
        block(buttonIndex);
    }
}


@end

//
//  YuriAlertView.h
//  AlertViewAnctionSheetBlock
//
//  Created by 张晓飞 on 15/9/19.
//  Copyright (c) 2015年 张晓飞. All rights reserved.
//

#import <UIKit/UIKit.h>
@class UIAlertView;
@interface YuriAlertView : UIAlertView

typedef void(^AlertViewChoiceCompletionBlock)(NSInteger index);


//普通弹框
/**
 *  自定义提示信息
 *
 *  @param message 提示信息
 */
- (instancetype)initCustomTipAlertWithMessage:(NSString *)message;

/**
 *  自定义提示信息，Block回调点击事件
 *
 *  @param message    提示信息
 *  @param completion 回调Block块
 */
- (instancetype)initCustomTipAlertWithMessage:(NSString *)message completion:(AlertViewChoiceCompletionBlock)completion;

//选择弹框
/**
 *  默认取消按钮为“确定”，Block回调点击事件
 *
 *  @param message    提示信息
 *  @param completion 回调Block块
 */
- (instancetype)initChoiceTipAlertWithMessage:(NSString *)message completion:(AlertViewChoiceCompletionBlock)completion;

/**
 *  自定义取消按钮，Block回调点击事件
 *
 *  @param message    提示信息
 *  @param doneTitle  cancel按钮
 *  @param completion 回调Block块
 */
- (instancetype)initChoiceTipAlertWithMessage:(NSString *)message doneTitle:(NSString *)doneTitle completion:(AlertViewChoiceCompletionBlock)completion;

/**
 *  自定义两个按钮标题（按index顺序0，1），Block回调
 *
 *  @param message    提示信息
 *  @param title1     index == 0 -> button title
 *  @param title2     index == 1 -> button title
 *  @param completion 回调方法
 */
- (instancetype)initChoiceTipAlertWithMessage:(NSString *)message button1Title:(NSString *)title1 button2Title:(NSString *)title2 completion:(AlertViewChoiceCompletionBlock)completion;

/**
 *  自定义标题与cancel按钮，Block回调
 *
 *  @param message    提示信息
 *  @param title      title
 *  @param doneTitle  cancelButtonTitle
 *  @param completion Block
 */
- (instancetype)initChoiceTipAlertWithMessage:(NSString *)message title:(NSString *)title doneTitle:(NSString *)doneTitle completion:(AlertViewChoiceCompletionBlock)completion;

/**
 *  自定义title和两个按钮，Block回调
 *
 *  @param message      提示信息
 *  @param title        title
 *  @param button1Title index == 0 -> button title
 *  @param button2Title index == 1 -> button title
 *  @param completion   Block
 */
- (instancetype)initChoiceTipAlertWithMessage:(NSString *)message title:(NSString *)title button1Title:(NSString *)button1Title button2Title:(NSString *)button2Title completion:(AlertViewChoiceCompletionBlock)completion;

//三选择弹窗
/**
 *  三层选择button0，1，2
 *
 *  @param message    提示信息
 *  @param title1     index == 0 -> button title
 *  @param title2     index == 1 -> button title
 *  @param title3     index == 2 -> button title
 *  @param completion Block
 */
- (instancetype)initChoiceTipAlertWithMessage:(NSString *)message button1Title:(NSString *)title1 button2Title:(NSString *)title2 button3Title:(NSString *)title3 completion:(AlertViewChoiceCompletionBlock)completion;

@end






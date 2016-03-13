//
//  YuriActionSheet.h
//  YuriAnctionSheetDemo
//
//  Created by 张晓飞 on 15/9/20.
//  Copyright (c) 2015年 张晓飞. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^ActionSheetChoiceCompletionBlock)(NSInteger index);

@interface YuriActionSheet : UIActionSheet <UIActionSheetDelegate>

/**
 *  类方法创建不带Block的ActionSheet
 *
 *  @param titles            actionSheet的otherButtonTitles,其中第一个为destructiveButtonTitle,第二个为cancelButtonTitle
 *
 *  @return YuriActionSheet
 */
+ (instancetype)actionSheetWithButtonTitles:(NSArray *)titles;
/**
 *  类方法创建带Block的ActionSheet
 *
 *  @param titles            actionSheet的otherButtonTitles,其中第一个为destructiveButtonTitle,第二个为cancelButtonTitle
 *  @param completion        ActionSheetChoiceCompletionBlock
 *
 *  @return YuriActionSheet
 */
+ (instancetype)actionSheetWithButtonTitles:(NSArray *)titles completion:(ActionSheetChoiceCompletionBlock)completion;
/**
 *  类方法创建带Block的ActionSheet
 *
 *  @param title   actonSheetTitle
 *  @param titles  actionSheet的otherButtonTitles,其中第一个为destructiveButtonTitle,第二个为cancelButtonTitle
 *
 *  @return YuriActionSheet
 */
+ (instancetype)actionSheetWithTipTitle:(NSString *)tipTitle ButtonTitles:(NSArray *)titles;
/**
 *  类方法创建带Block的ActionSheet
 *
 *  @param title   actonSheetTitle
 *  @param titles  actionSheet的otherButtonTitles,其中第一个为destructiveButtonTitle,第二个为cancelButtonTitle
 *  @param completion        ActionSheetChoiceCompletionBlock
 *
 *  @return YuriActionSheet
 */

+ (instancetype)actionSheetWithTipTitle:(NSString *)tipTitle ButtonTitles:(NSArray *)titles completion:(ActionSheetChoiceCompletionBlock)completion;
/**
 *  对象方法创建不带Block的ActionSheet
 *
 *  @param titles            actionSheet的otherButtonTitles,其中第一个为destructiveButtonTitle,第二个为cancelButtonTitle
 *
 *  @return YuriActionSheet
 */

- (instancetype)initWithButtonTitles:(NSArray *)titles;
/**
 *  对象方法创建带Block的ActionSheet
 *
 *  @param titles            actionSheet的otherButtonTitles,其中第一个为destructiveButtonTitle,第二个为cancelButtonTitle
 *  @param completion        ActionSheetChoiceCompletionBlock
 *
 *  @return YuriActionSheet
 */

- (instancetype)initWithButtonTitles:(NSArray *)titles completion:(ActionSheetChoiceCompletionBlock)completion;
/**
 *  对象方法创建不带Block的ActionSheet
 *
 *  @param title   actonSheetTitle
 *  @param titles            actionSheet的otherButtonTitles,其中第一个为destructiveButtonTitle,第二个为cancelButtonTitle
 *
 *  @return YuriActionSheet
 */

- (instancetype)initWithTipTitle:(NSString *)tipTitle WithButtonTitles:(NSArray *)titles;
/**
 *  对象方法创建带Block的ActionSheet
 *
 *  @param title   actonSheetTitle
 *  @param titles            actionSheet的otherButtonTitles,其中第一个为destructiveButtonTitle,第二个为cancelButtonTitle
 *  @param completion        ActionSheetChoiceCompletionBlock
 *
 *  @return YuriActionSheet
 */

- (instancetype)initWithTipTitle:(NSString *)tipTitle WithButtonTitles:(NSArray *)titles completion:(ActionSheetChoiceCompletionBlock)completion;

@end

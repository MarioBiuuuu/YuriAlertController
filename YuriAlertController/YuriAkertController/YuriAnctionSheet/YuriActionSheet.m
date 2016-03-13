//
//  YuriActionSheet.m
//  YuriAnctionSheetDemo
//
//  Created by 张晓飞 on 15/9/20.
//  Copyright (c) 2015年 张晓飞. All rights reserved.
//

#import "YuriActionSheet.h"
#import <objc/runtime.h>

#define TIPTITLE          @"提示"
#define CANCELTITLE       @"取消"
#define MyAnctionSheetKey @"MyAnctionSheetKey"

@implementation YuriActionSheet

+ (instancetype)actionSheetWithButtonTitles:(NSArray *)titles{
    
    return [[self alloc] initWithButtonTitles:titles];
    
}

+ (instancetype)actionSheetWithButtonTitles:(NSArray *)titles completion:(ActionSheetChoiceCompletionBlock)completion {
    
    return [[self alloc] initWithButtonTitles:titles completion:completion];
    
}

+ (instancetype)actionSheetWithTipTitle:(NSString *)tipTitle WithButtonTitles:(NSArray *)titles{
    
    return [[self alloc] initWithTipTitle:(NSString *)tipTitle WithButtonTitles:titles];
    
}

+ (instancetype)actionSheetWithTipTitle:(NSString *)tipTitle WithButtonTitles:(NSArray *)titles completion:(ActionSheetChoiceCompletionBlock)completion {
    
    return [[self alloc] initWithTipTitle:(NSString *)tipTitle WithButtonTitles:titles completion:completion];
    
}


- (instancetype)initWithButtonTitles:(NSArray *)titles {
    
    if (titles == nil || titles.count <= 1) {
        self = [super initWithTitle:TIPTITLE delegate:nil cancelButtonTitle:CANCELTITLE destructiveButtonTitle:titles[0] otherButtonTitles:nil, nil];
    } else {
        self = [super initWithTitle:TIPTITLE delegate:nil cancelButtonTitle:titles[1] destructiveButtonTitle:titles[0] otherButtonTitles:nil, nil];
    }
    NSInteger runLoop = 0;
    for (NSString *titleStr in titles) {
        
        runLoop += 1;
        if (runLoop > 2) {
            
            [self addButtonWithTitle:titleStr];
            
        }
        
    }

    return self;
}

- (instancetype)initWithButtonTitles:(NSArray *)titles completion:(ActionSheetChoiceCompletionBlock)completion {
    if (titles == nil || titles.count <= 1) {
        self = [super initWithTitle:TIPTITLE delegate:self cancelButtonTitle:CANCELTITLE destructiveButtonTitle:titles[0] otherButtonTitles:nil, nil];
    } else {
        self = [super initWithTitle:TIPTITLE delegate:self cancelButtonTitle:titles[1] destructiveButtonTitle:titles[0] otherButtonTitles:nil, nil];
    }
    NSInteger runLoop = 0;
    for (NSString *titleStr in titles) {
        
        runLoop += 1;
        if (runLoop > 2) {
            
            [self addButtonWithTitle:titleStr];
            
        }
        
    }
    objc_setAssociatedObject(self, MyAnctionSheetKey, completion, OBJC_ASSOCIATION_COPY);
    return self;
    
}

- (instancetype)initWithTipTitle:(NSString *)tipTitle WithButtonTitles:(NSArray *)titles {
    
    if (titles == nil || titles.count <= 1) {
        self = [super initWithTitle:tipTitle delegate:nil cancelButtonTitle:CANCELTITLE destructiveButtonTitle:titles[0] otherButtonTitles:nil, nil];
    } else {
        self = [super initWithTitle:tipTitle delegate:nil cancelButtonTitle:titles[1] destructiveButtonTitle:titles[0] otherButtonTitles:nil, nil];
    }
    NSInteger runLoop = 0;
    for (NSString *titleStr in titles) {
        
        runLoop += 1;
        if (runLoop > 2) {
            
            [self addButtonWithTitle:titleStr];
            
        }
        
    }
    
    return self;
}

- (instancetype)initWithTipTitle:(NSString *)tipTitle WithButtonTitles:(NSArray *)titles completion:(ActionSheetChoiceCompletionBlock)completion {
    if (titles == nil || titles.count <= 1) {
        self = [super initWithTitle:tipTitle delegate:self cancelButtonTitle:CANCELTITLE destructiveButtonTitle:titles[0] otherButtonTitles:nil, nil];
    } else {
        self = [super initWithTitle:tipTitle delegate:self cancelButtonTitle:titles[1] destructiveButtonTitle:titles[0] otherButtonTitles:nil, nil];
    }
    NSInteger runLoop = 0;
    for (NSString *titleStr in titles) {
        
        runLoop += 1;
        if (runLoop > 2) {
            
            [self addButtonWithTitle:titleStr];
            
        }
        
    }
    objc_setAssociatedObject(self, MyAnctionSheetKey, completion, OBJC_ASSOCIATION_COPY);
    return self;
    
}

- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex {
    
    ActionSheetChoiceCompletionBlock block = objc_getAssociatedObject(self, MyAnctionSheetKey);
    
    if (block) {
        block(buttonIndex);
    }
//    objc_setAssociatedObject(self, MyAnctionSheetKey, nil, OBJC_ASSOCIATION_COPY);
}

@end

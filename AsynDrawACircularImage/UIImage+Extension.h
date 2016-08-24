//
//  UIImage+Extension.h
//  AsynDrawACircularImage
//
//  Created by XiaoGe on 16/8/24.
//  Copyright © 2016年 XiaoGe. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Extension)

///  根据当前图像，和指定的尺寸，生成圆角图像并且返回
///
///  @param size       指定的尺寸
///  @param fillColor  填充颜色
///  @param completion 完成回调
- (void)xg_cornerImageWithSize:(CGSize)size fillColor:(UIColor *)fillColor completion:(void (^)(UIImage *image))completion;
@end

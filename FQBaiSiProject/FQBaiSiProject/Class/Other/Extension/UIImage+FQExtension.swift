//
//  UIImage+FQExtension.swift
//  FQBaiSiProject
//
//  Created by apple-gaofangqiu on 2018/2/5.
//  Copyright © 2018年 apple-fangqiu. All rights reserved.
//

import UIKit

extension UIImage
{
    /// 获得圆图
    ///
    /// - Returns: cicleImage
    public func cicleImage() -> UIImage {
        
        // 开启图形上下文 false代表透明
        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)
        // 获取上下文
        let ctx = UIGraphicsGetCurrentContext()
        // 添加一个圆
        let rect = CGRect(x: 0, y: 0, width: size.width, height: size.height)
        ctx?.addEllipse(in: rect)
        // 裁剪
        ctx?.clip()
        // 将图片画上去
        draw(in: rect)
        // 获取图片
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image ?? UIImage()
    }
}

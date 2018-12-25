//
//  ResponderButton.swift
//  ResponderEven
//
//  Created by liuwenchao on 2018/12/24.
//  Copyright © 2018年 liuwenchao. All rights reserved.
//

import UIKit

class ResponderButton: UIButton {
   
    
    override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        
        if self.isUserInteractionEnabled == false || self.isHidden == true || self.alpha <= 0.01{
            return nil
        }
        let isabove:Bool = self.point(inside: point, with: event)
        guard isabove == true else {
            return nil
        }
        var hit :UIView? = nil
        for (_,value) in self.subviews.enumerated().reversed(){
            //把点转化到子视图上面
            let convertPoint = self.convert(point, to:value)
            hit = value.hitTest(convertPoint, with: event)
            if hit != nil {
                break
            }
        }
        
        if hit != nil {
            return hit
        }else {
            return self
        }
        
  }
    
    override func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
        let x1 = point.x
        let y1 = point.y
        let x2 = self.frame.width/2
        let y2 = self.frame.height/2
        let dis = sqrt((x1 - x2)*(x1-x2) + (y1-y2)*(y1-y2))
        return (dis <= self.frame.width/2) ?true:false
    }
    
}



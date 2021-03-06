//
//  IMGLYAnimationDelegate.swift
//  imglyKit
//
//  Created by Sascha Schwabbauer on 11/05/15.
//  Copyright (c) 2015 9elements GmbH. All rights reserved.
//

import QuartzCore
import UIKit

public typealias IMGLYAnimationDelegateBlock = (Bool) -> (Void)

public class IMGLYAnimationDelegate: NSObject, CAAnimationDelegate {
    
    // MARK: - Properties
    
    public let block: IMGLYAnimationDelegateBlock
    
    // MARK: - Initializers
    
    init(block: IMGLYAnimationDelegateBlock) {
        self.block = block
    }
    
    // MARK: - Animation Delegate
    
    
    
    public func animationDidStop(anim: CAAnimation, finished flag: Bool) {
        block(flag)
    }
}

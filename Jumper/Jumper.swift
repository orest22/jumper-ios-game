//
//  Jumper.swift
//  Jumper
//
//  Created by Orest Hazda on 04/02/17.
//  Copyright © 2017 Orest Hazda. All rights reserved.
//

import Foundation
import SpriteKit

class Jumper : SKSpriteNode  {
    let initSize = CGSize(width: 40, height: 40)
    
    init() {
        super.init(texture: nil, color: .blue, size: initSize)
        
        let jumperBody = SKPhysicsBody(rectangleOf: initSize)
        jumperBody.mass = 1.5
        jumperBody.categoryBitMask = PhysicsCategory.Jumper
        jumperBody.collisionBitMask = 4
        self.physicsBody = jumperBody
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

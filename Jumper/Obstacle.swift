//
//  Obstacle.swift
//  Jumper
//
//  Created by Orest Hazda on 04/02/17.
//  Copyright © 2017 Orest Hazda. All rights reserved.
//

import Foundation
import SpriteKit

class Obstacle: SKSpriteNode {
    let initSize = CGSize(width: 150, height: 10)
    
    init(position: CGPoint) {
        super.init(texture: nil, color: .blue, size: initSize)
        self.name = "obstacle"
        self.position = position
        let sectionBody = SKPhysicsBody(rectangleOf: initSize)
        sectionBody.categoryBitMask = PhysicsCategory.Step
        sectionBody.collisionBitMask = 0
        sectionBody.contactTestBitMask = PhysicsCategory.Jumper
        sectionBody.affectedByGravity = false
        self.physicsBody = sectionBody
        
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

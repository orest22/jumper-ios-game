//
//  Floor.swift
//  Jumper
//
//  Created by Orest Hazda on 04/02/17.
//  Copyright © 2017 Orest Hazda. All rights reserved.
//

import Foundation
import SpriteKit

class Floor: SKSpriteNode {
    private let initSize = CGSize(width:200, height:10)
    
    init() {
        super.init(texture:nil, color: .red, size: initSize)
        let ledgeBody = SKPhysicsBody(rectangleOf: initSize)
        ledgeBody.mass = 100
        ledgeBody.isDynamic = false
        ledgeBody.categoryBitMask = PhysicsCategory.Edge
        self.physicsBody = ledgeBody
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

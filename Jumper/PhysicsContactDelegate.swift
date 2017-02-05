//
//  PhysicsContactDelegate.swift
//  Jumper
//
//  Created by Orest Hazda on 05/02/17.
//  Copyright © 2017 Orest Hazda. All rights reserved.
//

import Foundation
import SpriteKit
extension GameScene: SKPhysicsContactDelegate {
    
    func didBegin(_ contact: SKPhysicsContact) {
        print("contact")
        print(contact.bodyA.node)
        print(contact.bodyB.node)

        if let nodeA = contact.bodyA.node as? SKSpriteNode, let nodeB = contact.bodyB.node as? SKSpriteNode {
            print("Jumper - Obstacle contact")
            if nodeA.color != nodeB.color  {
               dieAndRestart()
            }else {
                print("no contact")
            }
        }
    }

}

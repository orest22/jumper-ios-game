//
//  ObstacleManager.swift
//  Jumper
//
//  Created by Orest Hazda on 05/02/17.
//  Copyright © 2017 Orest Hazda. All rights reserved.
//

import Foundation
import SpriteKit

class ObstacleManager {
    public var obstacles = [SKNode]()
    public let obstacleSpace: CGFloat = 600
    
    public func populateSceneWithObstacless(scene: SKScene) {
        for i in 0...2 {
            let position = CGPoint(x: scene.size.width/2, y: CGFloat(i+1) * self.obstacleSpace)
            self.obstacles.append(Obstacle(position: position))
            scene.addChild(obstacles[i])
        }
    }
    
    public func addNewObstacle(scene: SKScene) {
        let position = CGPoint(x: scene.size.width/2, y: CGFloat(self.obstacles.count) * self.obstacleSpace)
        let o = Obstacle(position: position)
        self.obstacles.append(o)
        scene.addChild(o)

    }
    
    public func removeObstacles() {
        for node in obstacles {
            node.removeFromParent()
        }
        self.obstacles.removeAll()
    }

}

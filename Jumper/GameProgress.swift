//
//  GameProgress.swift
//  Jumper
//
//  Created by Orest Hazda on 05/02/17.
//  Copyright © 2017 Orest Hazda. All rights reserved.
//

import Foundation
import SpriteKit

class GameProgress: SKNode {
    let scoreLabel = SKLabelNode()
    public var score: Int = 0
    
    func setupProgressNode(screenSize: CGSize) {
        
        let cameraOrigin = CGPoint(x: screenSize.width/2, y: screenSize.height/2)
        
        scoreLabel.position = CGPoint(x: -cameraOrigin.x + 20, y: -cameraOrigin.y + 80 )
        scoreLabel.fontColor = .white
        scoreLabel.fontSize = 40
        scoreLabel.text = String(self.score)
        self.addChild(scoreLabel)
    }
    
    func updateScore(newScore: Int){
        self.score = newScore
        scoreLabel.text = String(self.score)
    }
}

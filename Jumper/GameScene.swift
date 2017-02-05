//
//  GameScene.swift
//  Jumper
//
//  Created by Orest Hazda on 04/02/17.
//  Copyright © 2017 Orest Hazda. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    private let jumper = Jumper()
    private let floor = Floor()
    private let cam = SKCameraNode()
    private let obstacleManager = ObstacleManager()

    
    override func didMove(to view: SKView) {
        
        self.physicsWorld.contactDelegate = self
        self.physicsWorld.gravity.dy = -22
        
        print("Width: \(size.width); Height: \(size.height)")
        
        // Floor
        floor.position = CGPoint(x: size.width/2, y: 160)
        self.addChild(floor)
        
        
        // Camera
        self.addChild(cam)
        self.camera = cam
        cam.position = CGPoint(x: size.width/2, y: size.height/2)
        
        setupPlayerAndObstacles()
    
    }
    
    override func didSimulatePhysics() {
        //cam.position = jumper.position
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        jumper.physicsBody?.velocity.dy = 800.0
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
        
        if jumper.position.y > obstacleManager.obstacleSpace * CGFloat(obstacleManager.obstacles.count - 2) {
            print("score")
            // @TODO Add score
            obstacleManager.addNewObstacle(scene: self)
        }
    }
    
    func dieAndRestart() {
        print("boom")
        jumper.physicsBody?.velocity.dy = 0
        jumper.removeFromParent()
        
        obstacleManager.removeObstacles()
        
        setupPlayerAndObstacles()
    }
    
    func setupPlayerAndObstacles() {
        // Jumper
        jumper.position = CGPoint(x: size.width/2, y: 180)
        self.addChild(jumper)

        // Obstacle
        obstacleManager.populateSceneWithObstacless(scene: self)
    }
}

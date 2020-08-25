//
//  GameScene.swift
//  GameJam_SpriteKit
//
//  Created by Alex Nascimento on 24/08/20.
//  Copyright © 2020 Alex Nascimento. All rights reserved.
//

import SpriteKit
import GameplayKit

class HomeScene: SKScene {
    let level1 = SKShapeNode(rectOf: CGSize(width: 300, height: 150))
    let level1Label = SKLabelNode()
    
    let level2 = SKShapeNode(rectOf: CGSize(width: 300, height: 150))
    let level2Label = SKLabelNode()

   // addChild(shape)
   //shape.position = CGPoint(x: self.frame.midX, y: self.frame.midY)
    
    override func didMove(to view: SKView) {
        createLevelButton()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        let touchLocation = touch!.location(in: self)
        
        if level1.contains(touchLocation){
            LevelManager(LevelEscolhido: level1Label.text ?? "Error")
            
        }
    }
    
    func createLevelButton() {
        level1.fillColor = SKColor.orange
        level1.position = CGPoint(x: self.frame.midX, y: self.frame.midY * 1.3)
        level1Label.text = "Level 1"
        level1Label.color = .black
        level1Label.position = CGPoint(x: level1.frame.midX, y: level1.frame.midY)
        
        level2.fillColor = SKColor.orange
        level2.position = CGPoint(x: self.frame.midX, y: self.frame.midY/1.2)
        level2Label.text = "Level 2"
        level2Label.color = .black
        level2Label.position = CGPoint(x: level2.frame.midX, y: level2.frame.midY)
        
        addChild(level1)
        addChild(level2)
        addChild(level1Label)
        addChild(level2Label)
    }
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}

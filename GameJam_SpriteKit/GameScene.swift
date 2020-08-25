//
//  GameScene.swift
//  GameJam_SpriteKit
//
//  Created by Alex Nascimento on 24/08/20.
//  Copyright © 2020 Alex Nascimento. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var frameCenter: CGPoint {
        return  CGPoint(x: self.frame.midX, y: self.frame.midY)
    }
    
    let tiles: [[Character]] = [
        ["r", "b", "g"],
        ["b", "b", "g"],
        ["g", "g", "y"]
    ]
    
    override func didMove(to view: SKView) {
        let centerDot = SKShapeNode(circleOfRadius: 30)
        centerDot.position = frameCenter
        addChild(centerDot)
        
        let grid = Grid(tileSet: tiles)
        grid.center = frameCenter
        addChild(grid)
    }
    
    
    func touchDown(atPoint pos : CGPoint) {
        
    }
    
    func touchMoved(toPoint pos : CGPoint) {
        
    }
    
    func touchUp(atPoint pos : CGPoint) {
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchDown(atPoint: t.location(in: self)) }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchMoved(toPoint: t.location(in: self)) }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}

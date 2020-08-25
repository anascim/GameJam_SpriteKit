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
    
    var blob: Blob!
    
    var frameCenter: CGPoint {
        return  CGPoint(x: self.frame.midX, y: self.frame.midY)
    }
    
    let tiles: [[Character]] = [
        ["r", "b", "g"],
        ["b", "b", "g"],
        ["g", "g", "y"]
    ]
    
    override func didMove(to view: SKView) {
        self.view?.addGestureRecognizer(UISwipeGestureRecognizer(target: self, action: #selector(swipe(_:))))
        
        let centerDot = SKShapeNode(circleOfRadius: 30)
        centerDot.position = frameCenter
        addChild(centerDot)
        
        let grid = Grid(tileSet: tiles)
        grid.center = frameCenter
        addChild(grid)
        
        let blob = Blob(tile: grid.tiles[3])
        grid.addChild(blob)
    }
    
    @objc
    public func swipe(_ sender: UISwipeGestureRecognizer) {
        switch sender.direction {
        case .up:
            blob.move(.Up)
        case .down:
            blob.move(.Down)
        case .left:
            blob.move(.Left)
        case .right:
            blob.move(.Right)
        default:
            print("unknowned swipe direction")
        }
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

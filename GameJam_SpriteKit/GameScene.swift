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
    
    var blob1: Blob!
    var blob2: Blob!
    var level: Level
    
    var frameCenter: CGPoint {
        return  CGPoint(x: self.frame.midX, y: self.frame.midY)
    }
    
    let tiles: [[Character]] = [
        ["r", "b", "g"],
        ["b", "b", "g"],
        ["g", "g", "y"]
    ]
    
    init(level: Level, size: CGSize) {
        self.level = level
        super.init(size: size)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func didMove(to view: SKView) {
        let rightSwipe = UISwipeGestureRecognizer(target: self, action: #selector(swipe(_:)))
        rightSwipe.direction = .right
        let leftSwipe = UISwipeGestureRecognizer(target: self, action: #selector(swipe(_:)))
        leftSwipe.direction = .left
        let downSwipe = UISwipeGestureRecognizer(target: self, action: #selector(swipe(_:)))
        downSwipe.direction = .down
        let upSwipe = UISwipeGestureRecognizer(target: self, action: #selector(swipe(_:)))
        upSwipe.direction = .up
            
        self.view?.addGestureRecognizer(rightSwipe)
        self.view?.addGestureRecognizer(leftSwipe)
        self.view?.addGestureRecognizer(downSwipe)
        self.view?.addGestureRecognizer(upSwipe)
        
        let centerDot = SKShapeNode(circleOfRadius: 30)
        centerDot.position = frameCenter
        addChild(centerDot)
        
        let topGrid = Grid(tileSet: level.top)
        topGrid.center = CGPoint(x: frameCenter.x, y: frameCenter.y + 200)
        addChild(topGrid)
        
        blob1 = Blob(tile: topGrid.tiles[3])
        topGrid.addChild(blob1)
        
        let bottomGrid = Grid(tileSet: level.bottom)
        bottomGrid.center = CGPoint(x: frameCenter.x, y: frameCenter.y - 200)
        addChild(bottomGrid)
        
        blob2 = Blob(tile: bottomGrid.tiles[2])
        bottomGrid.addChild(blob2)
    }
    
    @objc
    public func swipe(_ sender: UISwipeGestureRecognizer) {
        switch sender.direction {
        case .up:
            print("up")
            blob1.move(.Up)
            blob2.move(.Up)
        case .down:
            print("down")
            blob1.move(.Down)
            blob2.move(.Down)
        case .left:
            print("left")
            blob1.move(.Left)
            blob2.move(.Left)
        case .right:
            print("right")
            blob1.move(.Right)
            blob2.move(.Right)
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

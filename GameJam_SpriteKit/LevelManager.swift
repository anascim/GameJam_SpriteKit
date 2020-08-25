//
//  LevelManager.swift
//  GameJam_SpriteKit
//
//  Created by Guilherme Enes on 25/08/20.
//  Copyright © 2020 Alex Nascimento. All rights reserved.
//

import Foundation

class LevelManager {
    var levelString: String
    
    init(LevelEscolhido: String) {
        self.levelString = LevelEscolhido
        print(levelString)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

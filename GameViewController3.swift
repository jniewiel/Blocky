//
//  GameViewController.swift
//  Blocky
//
//  Created by ERYK NIEWIELSKI on 4/28/19.
//  Copyright © 2019 Jan Niewielski. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController3: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let skView3 = self.view as! SKView? {
            if let scene = GameScene3(fileNamed:"GameScene3") {
                // Configure the view.
                scene.scaleMode = .aspectFit
                
                skView3.showsFPS = true
                skView3.showsNodeCount = true
                
                /* Sprite Kit applies additional optimizations to improve rendering performance */
                skView3.ignoresSiblingOrder = true
                
                skView3.presentScene(scene)
            }
        }
    }

    override var shouldAutorotate: Bool {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

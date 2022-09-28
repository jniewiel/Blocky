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

class GameViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let skView2 = self.view as! SKView? {
            if let scene = GameScene2(fileNamed:"GameScene2") {
                // Configure the view.
                scene.scaleMode = .aspectFit
                
                skView2.showsFPS = true
                skView2.showsNodeCount = true
                
                /* Sprite Kit applies additional optimizations to improve rendering performance */
                skView2.ignoresSiblingOrder = true
                
                skView2.presentScene(scene)
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

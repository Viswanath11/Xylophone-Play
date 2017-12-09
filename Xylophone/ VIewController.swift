//
//  ViewController.swift
//  Xylophone
//
//  Created by Viswanath Subramani S S on 02/11/2017.
//  Copyright © ViswanathSubramaniSS. All rights reserved.
//	Assets provided by London App Brewery

import UIKit
//import AudioToolbox
import AVFoundation

class ViewController: UIViewController{
    
	@IBOutlet var xylophoneKeys: [UIButton]!
	
	var xylophonePlayers = [XylophonePlayer]()
	let xylophone = XylophoneStruct()
	
	var lastActiveKey = "0"
	
	
    override func viewDidLoad() {
        super.viewDidLoad()
		prepareKeySounds()
		
		let pan = UIPanGestureRecognizer(target: self, action: #selector(PanOverKey))
		self.view.addGestureRecognizer(pan)
    }

	
	func prepareKeySounds() {
		
		for note in xylophone.notes {
				xylophonePlayers.append(XylophonePlayer(filePath: note, ext: xylophone.fileExt))
		}
		
		for player in 0..<xylophonePlayers.count {
			xylophonePlayers[player].prepareSound()
		}
	}
	
    @IBAction func notePressed(_ sender: UIButton) {
		xylophonePlayers[sender.tag - 1].play()
		print("Played sound for \(sender.tag)")
		}
	
		
	

}
    





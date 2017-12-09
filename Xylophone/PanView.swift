//
//  PanView.swift
//  Xylophone
//
//  Created by Viswanath Subramani S S on 02/11/2017.
//  Copyright © ViswanathSubramaniSS. All rights reserved.
//	Assets provided by London App Brewery

import UIKit

extension ViewController {
	@objc func PanOverKey(sender: UIPanGestureRecognizer) {
		
		let touchpoint = sender.location(in: self.view)
		
		for key in xylophoneKeys {
			if key.frame.contains(touchpoint) {
				
					if key.tag != Int(lastActiveKey) {
						print("Pan Sound played for \(key.tag)")
						xylophonePlayers[key.tag-1].play()
						lastActiveKey = "\(key.tag)"
				}
			}
		}
	}
}

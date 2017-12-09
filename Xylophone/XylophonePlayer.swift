//
//  XylophonePlayer.swift
//  Xylophone
//
//  Created by Viswanath Subramani S S on 02/11/2017.
//  Copyright © ViswanathSubramaniSS. All rights reserved.
//	Assets provided by London App Brewery

import AVFoundation

class XylophonePlayer {
	
	var path: String
	var notesURL: URL
	var xylophonePlayer: AVAudioPlayer!
	
	init(filePath: String, ext: String) {
		self.path = Bundle.main.path(forResource: filePath, ofType: ext)!
		self.notesURL = URL(fileURLWithPath: path)
	}
	
	func prepareSound() {
		
		do{
			try xylophonePlayer = AVAudioPlayer(contentsOf: notesURL)
			xylophonePlayer.prepareToPlay()
		} catch let error as NSError{
			print(error.debugDescription)
		}
	}
	
	func play(){
		if xylophonePlayer.isPlaying {
			xylophonePlayer.currentTime = 0
			xylophonePlayer.play()
		}
		xylophonePlayer.play()
	}
	
	
}



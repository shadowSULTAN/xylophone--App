//
//  ViewController.swift
//  xylophoneApp
//
//  Created by ddukk15 on 10/11/22.
//


import UIKit
import AVFoundation

class ViewController: UIViewController

{
    var audioplayer = AVAudioPlayer()
    var soundArray = ["note1","note2","note3","note4","note5","note6","note7"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    // Do any additional setup func soundFiles(){
    
    
    
    @IBAction func playButton(_ sender: UIButton) {
        
        let selectedSound = soundArray[(sender.tag)]
         
          playingSound(choosedSound:selectedSound)
          
    }
func playingSound(choosedSound:String){
    let bundle = Bundle.main
    
    
    // access the song
    guard let sound = bundle.path(forResource: choosedSound, ofType: "wav") else { return }
    // check this sound with audioPlayer
    do {
        audioplayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound))
        print("sound found")
        audioplayer.prepareToPlay()
        audioplayer.play()
    } catch {
        print("sound not found")
    }
    
}
    
  
}



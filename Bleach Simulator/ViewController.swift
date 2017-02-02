//
//  ViewController.swift
//  Bleach Simulator
//
//  Created by Joseph Jin on 1/20/17.
//  Copyright © 2017 Animator Joe. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    //Init sound
    var bleachSound = try! AVAudioPlayer.init(contentsOf: URL(fileURLWithPath: Bundle.main.path(forResource: "Drink Bleach", ofType: "mp3")!));
    var bleachSong = try! AVAudioPlayer.init(contentsOf: URL(fileURLWithPath: Bundle.main.path(forResource: "I Drink Clorox Bleach Everyday Parody of I Play Pokemon Go Everyday", ofType: "mp3")!));
    
    //Screen elements
    @IBOutlet var button: UIButton!
    
    //Variables
    var bleachCoords = CGPoint()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Bleach setup
        //bleachJuice.animationImages = [imageNamed:@["IMG_4749.jpg"],imageNamed:@["IMG_4749.jpg"]][UIImage imageNamed:@"Bleach.jpg"],[UIImage imageNamed:"IMG_4750.jpg"]]
        
        //Screen elements
        button.layer.cornerRadius = 4
        
        //Audio prep
        bleachSound.prepareToPlay()
        bleachSong.prepareToPlay()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func pourBleach(){
        
        
    }
    
    func playDrinkSound(){
        
        switch arc4random()%3 {
        case 1:
            bleachSound.play()
        default:
            bleachSong.currentTime = 4
            bleachSong.play()
        }
        
    }

    @IBAction func bleachButton() {
        if(bleachSong.isPlaying){
            bleachSong.stop()
        }else if(bleachSound.isPlaying){
            bleachSound.stop()
        }else{
            playDrinkSound()
        }
    }

}


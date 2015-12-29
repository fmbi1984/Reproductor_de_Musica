//
//  ViewController.swift
//  ReproductorDeMusica
//
//  Created by Francisco Betancourt on 12/29/15.
//  Copyright © 2015 VendwatchTelematics. All rights reserved.
//

import UIKit
import AVFoundation

private var reproductor : AVAudioPlayer!

class ViewController: UIViewController {

    @IBOutlet weak var myVolume: UISlider!
    
    @IBOutlet weak var myTitle: UILabel!
    
    @IBOutlet weak var myImage: UIImageView!
    
    @IBOutlet weak var myOption1: UIButton!
    @IBOutlet weak var myOption2: UIButton!
    @IBOutlet weak var myOption3: UIButton!
    @IBOutlet weak var myOption4: UIButton!
    @IBOutlet weak var myOption5: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func play() {
        if !reproductor.playing {
            reproductor.play()
        }
    }

    @IBAction func pause() {
        if reproductor.playing {
            reproductor.pause()
        }
    }
    
    @IBAction func stop() {
        if reproductor.playing {
            reproductor.stop()
            reproductor.currentTime = 0.0;
        }
    }
    
    @IBAction func volume() {
        reproductor.volume = myVolume.value
    }
    
    @IBAction func shuffle() {
        let number = 1 + Int( arc4random_uniform(5))
        print (number)
        
        switch(number) {
        case 1: selectOption1()
        case 2: selectOption2()
        case 3: selectOption3()
        case 4: selectOption4()
        case 5: selectOption5()
        default: print("No valid!")
        }
        if !reproductor.playing {
            reproductor.play()
        }
    }
    
    
    @IBAction func option1() {
        selectOption1()
        if !reproductor.playing {
            reproductor.play()
        }
    }
    @IBAction func option2() {
        selectOption2()
        if !reproductor.playing {
            reproductor.play()
        }
    }
    @IBAction func option3() {
        selectOption3()
        if !reproductor.playing {
            reproductor.play()
        }
    }
    @IBAction func option4() {
        selectOption4()
        if !reproductor.playing {
            reproductor.play()
        }
    }
    @IBAction func option5() {
        selectOption5()
        if !reproductor.playing {
            reproductor.play()
        }
    }
    
    func selectOption1() {
        myOption1.tintColor = UIColor.redColor()
        myOption2.tintColor = UIColor.blueColor()
        myOption3.tintColor = UIColor.blueColor()
        myOption4.tintColor = UIColor.blueColor()
        myOption5.tintColor = UIColor.blueColor()
        
        let sonidoURL = NSBundle.mainBundle().URLForResource("02 Bring Me to Life", withExtension: "mp3")
        do {
            try reproductor = AVAudioPlayer(contentsOfURL: sonidoURL!)
            reproductor.volume = myVolume.value
            
            myTitle.text = "Evanescence - Bring me to life"
            myImage.image = UIImage(named: "EvanescenceFallen.jpg")
        } catch
        {
            print ("Error al cargar el archivo de sonido")
        }

        
    }
    
    func selectOption2() {
        myOption2.tintColor = UIColor.redColor()
        myOption1.tintColor = UIColor.blueColor()
        myOption3.tintColor = UIColor.blueColor()
        myOption4.tintColor = UIColor.blueColor()
        myOption5.tintColor = UIColor.blueColor()
        
        let sonidoURL = NSBundle.mainBundle().URLForResource("04 Zombie", withExtension: "mp3")
        do {
            try reproductor = AVAudioPlayer(contentsOfURL: sonidoURL!)
            reproductor.volume = myVolume.value
            
            myTitle.text = "The Cranberries - Zombie"
            myImage.image = UIImage(named: "CranberriesNoNeedToArgue.jpg")
        } catch
        {
            print ("Error al cargar el archivo de sonido")
        }

    }
    
    func selectOption3() {
        myOption3.tintColor = UIColor.redColor()
        myOption1.tintColor = UIColor.blueColor()
        myOption2.tintColor = UIColor.blueColor()
        myOption4.tintColor = UIColor.blueColor()
        myOption5.tintColor = UIColor.blueColor()
        
        let sonidoURL = NSBundle.mainBundle().URLForResource("01 Shut Up", withExtension: "mp3")
        do {
            try reproductor = AVAudioPlayer(contentsOfURL: sonidoURL!)
            reproductor.volume = myVolume.value
            
            myTitle.text = "Simple Plan - Shut Up"
            myImage.image = UIImage(named: "SimplePlanStillNotGettingAny.jpg")
        } catch
        {
            print ("Error al cargar el archivo de sonido")
        }

    }
    
    func selectOption4() {
        myOption4.tintColor = UIColor.redColor()
        myOption1.tintColor = UIColor.blueColor()
        myOption2.tintColor = UIColor.blueColor()
        myOption3.tintColor = UIColor.blueColor()
        myOption5.tintColor = UIColor.blueColor()
        
        let sonidoURL = NSBundle.mainBundle().URLForResource("06 Thunderstruck", withExtension: "mp3")
        do {
            try reproductor = AVAudioPlayer(contentsOfURL: sonidoURL!)
            reproductor.volume = myVolume.value
            
            myTitle.text = "AC/DC - Thunderstruck"
            myImage.image = UIImage(named: "ACDCIronman2.jpg")
        } catch
        {
            print ("Error al cargar el archivo de sonido")
        }

    }
    
    func selectOption5() {
        myOption5.tintColor = UIColor.redColor()
        myOption1.tintColor = UIColor.blueColor()
        myOption2.tintColor = UIColor.blueColor()
        myOption3.tintColor = UIColor.blueColor()
        myOption4.tintColor = UIColor.blueColor()
        
        let sonidoURL = NSBundle.mainBundle().URLForResource("Titanium (Feat. Sia)", withExtension: "mp3")
        do {
            try reproductor = AVAudioPlayer(contentsOfURL: sonidoURL!)
            reproductor.volume = myVolume.value
            
            myTitle.text = "David Guetta - Titanium"
            myImage.image = UIImage(named: "DavidGuettaTitanium.jpg")
            
            
        } catch
        {
            print ("Error al cargar el archivo de sonido")
        }
    }
}


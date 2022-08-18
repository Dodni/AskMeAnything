//
//  ViewController.swift
//  AskMeAnything
//
//  Created by Fehér Donát on 18.08.22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var ball_image_view: UIImageView!
    let balls = ["ball1","ball2", "ball3", "ball4", "ball5", "ball6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        newBallImage()
    }
    
    @IBAction func grillMeOnTouch(_ sender: UIButton) {
        newBallImage()
    }
    
    func newBallImage() {
        let randomBallIndex = arc4random_uniform(UInt32(balls.count)) //fill the randBallIndex variable with rands
        
        print("ball index: \(randomBallIndex)")
        
        let randImage = balls[Int(randomBallIndex)] //ugyan olyan tipus lesz mint amit ad
        
        ball_image_view.image = UIImage(named: randImage) //itt megkapjuk a nevet, hogy melyiket kell megjeleniteni.
    }
}


//
//  ViewController.swift
//  BlossomApp
//
//  Created by Janice Sanchez on 8/16/22.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    let allTexts = ["It always feels impossible until it's done", "Keep your face towards the sunshine and the shadows will fall behind you", "Spread love everywhere you go", "Believe you can and you're already halfway there", "Embrace the glorious mess you are", "Loving yourself isn't vanity, it's sanity", "Do what is right, not what is easy", "Successful people aren't gifted, they work hard", "The distance between dreams and reality is action", "Mistakes are the portals of discovery", "To overcome fear you must go through it", "Strive for progress not perfection", "You don't drown by falling in water, you drown my staying in it", "You are enough", "One small crack doesn't mean you're broken, it means that you were put to the test and didn't fall apart"]
    @IBOutlet weak var message: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.message.text = self.allTexts[Int(arc4random_uniform(UInt32(self.allTexts.count)))]
}
    
    
}


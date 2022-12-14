//
//  ViewController.swift
//  BlossomApp
//
//  Created by Janice Sanchez on 8/16/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var feelingMsg: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    let allTexts = ["It always feels impossible until it's done.", "Keep your face towards the sunshine and the shadows will fall behind you.", "Believe you can and you're already halfway there.", "One day you will be proud you made it through this.", "Do what is right, not what is easy.", "When you feel like giving up, remember why you held on for so long in the first place.", "The distance between dreams and reality is action.", "Mistakes are the portals of discovery.", "To overcome fear you must go through it.", "Strive for progress, not perfection.", "You don't drown by falling in water, you drown my staying in it.", "One small crack doesn't mean you're broken, it means that you were put to the test and didn't fall apart."]
    @IBOutlet weak var message: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.message.text = self.allTexts[Int(arc4random_uniform(UInt32(self.allTexts.count)))]
}
    
    @IBAction func terribleButton(_ sender: UIButton) {
        feelingMsg.text = ("It may be difficult but you'll get through this.")
    }
    
    @IBAction func sadButton(_ sender: UIButton) {
        feelingMsg.text = ("It will get better, don't worry.")
    }
    
    @IBAction func normalButton(_ sender: UIButton) {
        feelingMsg.text = ("You are doing fine. I believe in you.")
    }
    
    @IBAction func happyButton(_ sender: Any) {
        feelingMsg.text = ("It's good to know you are doing well today.")
    }
    
    @IBAction func cheerfulButton(_ sender: UIButton) {
        feelingMsg.text = ("I am glad you were able to find your happiness today.")
    }
}


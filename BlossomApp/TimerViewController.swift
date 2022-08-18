//
//  TImerViewController.swift
//  BlossomApp
//
//  Created by Janice Sanchez on 8/18/22.
//

import UIKit

class TImerViewController: UIViewController {
    
    var minutes = 25
    var timer = Timer()
    
    
    
    
    @IBOutlet weak var lblTime: UILabel!
    @IBOutlet weak var slider: UISlider!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func slider(_ sender: UISlider) {
        minutes = Int(sender.value)
        lblTime.text = String(minutes)
    }
    
       
    

    @IBAction func buttonStart(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(TImerViewController.updateTimer), userInfo: nil, repeats: true)
    }
    
    
    
    @IBAction func buttonStop(_ sender: Any) {
        timer.invalidate()
        minutes = 25
        slider.setValue(25, animated: true)
        lblTime.text = String(minutes)
    }
    
    @objc func updateTimer () {
        
        minutes -= 1
        lblTime.text = timeString(time: TimeInterval(minutes))
        
        slider.value = Float(minutes)
        
        if minutes == 0 {
            timer.invalidate()
        }
    }
    
    func timeString(time:TimeInterval) -> String {
        
        let hours = Int(time) / 3600
        let minutes = Int(time) / 60 
        let seconds = Int(time) % 60
        
        return String(format: "%02i:%02i:%02i", hours,minutes,seconds)
        
    }
    
    func alert () {
        let alertController = UIAlertController(title: "Time's up!", message: "please take a 5 minute break :)", preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "cancel", style: .cancel) { (action) in
            print("cancel")
        }
        alertController.addAction(cancelAction)
        
        let OKAction = UIAlertAction(title: "OK", style: .default) { (action) in
            print("OK")
        }
        alertController.addAction(OKAction)
        self.present(alertController, animated: true)
        
    }

    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

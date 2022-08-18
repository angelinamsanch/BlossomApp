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
    
    @IBAction func slider(_ sender: UISlider) {
        minutes = Int(sender.value)
        lblTime.text = String(minutes)
    }
    
    @IBAction func btnStart(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector (TImerViewController.counter), userInfo: nil, repeats: true)
    }
    
    @IBAction func btnStop(_ sender: Any) {
        timer.invalidate()
        minutes = 25
        slider.setValue(25, animated: true)
        lblTime.text = "25:00"
    }
    
    @objc func counter () {
        minutes -= 1
        //lblTime.text = String(seconds)
        lblTime.text = timeString(time: TimeInterval(minutes))
        
        if (minutes == 0) {
            timer.invalidate()
            Alert()
        }
        slider.value = Float(minutes)
    }
    
    func timeString(time:TimeInterval) -> String {
        let hours = Int(time) / 3600
        let minutes = Int(time) / 60 % 60
        let seconds = Int(time) % 60
        return String(format:"%02i:%02i:%02i", hours, minutes, seconds)
    }
    
    func Alert() {
        let alertController = UIAlertController(title: "Time's up!", message: "Please take a five minute break :)", preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
            print("cancel")
        }
        alertController.addAction(cancelAction)
        
        let OKAction = UIAlertAction(title: "OK", style: .default) { (action) in
            print("OK")
        }
        alertController.addAction(OKAction)
        self.present(alertController, animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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

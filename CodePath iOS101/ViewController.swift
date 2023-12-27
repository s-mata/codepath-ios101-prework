//
//  ViewController.swift
//  CodePath iOS101
//
//  Created by Sandra Mata on 12/27/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    // [1] link the UI element to logic by adding an IBAction
    // [3] call the changeColor function so it executes when button is pressed
    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        let randomColor = changeColor()
        view.backgroundColor = randomColor
    }
    // [2] create a function that actually does the action we want returning a UIColor object; variables red, green, blue get assigned a random number each, assign those RGB values to UIColor
    func changeColor()->UIColor {
        let red = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)
        
        return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
    }
    @IBAction func increaseFont(_ sender: UIButton) {
        let newSize = increaseFontSize()
        
        nameLabel.font = UIFont.systemFont(ofSize: CGFloat(newSize))
        schoolLabel.font = UIFont.systemFont(ofSize: CGFloat(newSize))
        jobLabel.font = UIFont.systemFont(ofSize: CGFloat(newSize))
    }
    @IBAction func decreaseFont(_ sender: UIButton) {
        let newSize = decreaseFontSize()
        
        nameLabel.font = UIFont.systemFont(ofSize: CGFloat(newSize))
        schoolLabel.font = UIFont.systemFont(ofSize: CGFloat(newSize))
        jobLabel.font = UIFont.systemFont(ofSize: CGFloat(newSize))
    }
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var schoolLabel: UILabel!
    
    @IBOutlet weak var jobLabel: UILabel!
    
    var size: Int = 17

    func increaseFontSize()->Int {
        size = size+1
        
        return size
    }
    
    func decreaseFontSize()->Int {
        size = size-1
        
        return size
    }
    
}


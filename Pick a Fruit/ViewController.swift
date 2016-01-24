//
//  ViewController.swift
//  Pick a Fruit
//
//  Created by Syed Askari on 24/01/2016.
//  Copyright © 2016 Syed Askari. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate {
    @IBOutlet weak var fruitsMessages: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var fruits = ["Apples", "Oranges", "Lemons", "Limes", "Grapes"]

    // MARK: UIPropertise

    // returns the number of 'columns' to display.
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int{
        return 1
    }
    
    // returns the # of rows in each component..
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        return fruits.count
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    // If you return back a different object, the old one will be released. the view will be centered in the row rect
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?{
        
        return fruits[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){
        let fruitSelected = fruits[row]
      
        switch fruitSelected{
        case "Apples":
                imageView.image = UIImage(named: "apples.jpg")
                fruitsMessages.text = "These Apples are Red."
                fruitsMessages.textColor = UIColor.redColor()
        case "Oranges":
            imageView.image = UIImage(named: "oranges.jpg")
            fruitsMessages.text = "These Oranges are Orange."
            fruitsMessages.textColor = UIColor.orangeColor()
        case "Lemons":
            imageView.image = UIImage(named: "lemons.jpg")
            fruitsMessages.text = "These Lemons are Yellow."
            fruitsMessages.textColor = UIColor.yellowColor()
        case "Limes":
            imageView.image = UIImage(named: "limes.jpg")
            fruitsMessages.text = "These Limes are Green."
            fruitsMessages.textColor = UIColor.greenColor()
        case "Grapes":
            imageView.image = UIImage(named: "blueberries.jpg")
            fruitsMessages.text = "These Grapes are Purple."
            fruitsMessages.textColor = UIColor.purpleColor()
        default:
            imageView.image = UIImage(named: "fruits.jpg")
            fruitsMessages.text = "The Fruits"
            fruitsMessages.textColor = UIColor.blackColor()

        }//END of switch
        
    }
    
    
    
}


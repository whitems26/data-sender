//
//  ViewController.swift
//  DataManager
//
//  Created by ktds 19 on 2017. 8. 16..
//  Copyright © 2017년 cjon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var textField: UITextField!
    
    @IBAction func next(_ sender: Any) {
        
        let textFieldStr = self.textField.text
//        print(textFieldStr)
        
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "secondview")
        
//        let tmpVC = vc as! SecondViewController
        
        if let secondVC = vc as? SecondViewController{
            
            secondVC.myStr = textFieldStr
            
            self.present(secondVC, animated: true, completion: nil)
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


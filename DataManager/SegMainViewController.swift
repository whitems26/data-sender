//
//  SegMainViewController.swift
//  DataManager
//
//  Created by ktds 19 on 2017. 8. 16..
//  Copyright © 2017년 cjon. All rights reserved.
//

import UIKit

class SegMainViewController: UIViewController {

    var myStr:String?
    
    @IBOutlet weak var segTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
        if let str = myStr {
            self.segTextField.text = str
            myStr = str
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let textFieldStr = self.segTextField.text
        
//        print(textFieldStr)
        
        if segue.identifier == "senddatasegue"
        {
            if let secondVC = segue.destination as? SegSecondViewController{
               
                secondVC.myStr = textFieldStr
                
//                secondVC.segLabel.text = textFieldStr
                

            }

        }
        
        if let appDelegate = UIApplication.shared.delegate as? AppDelegate {
            appDelegate.myStr = textFieldStr
        }
        
    }
}

//
//  SecondViewController.swift
//  DataManager
//
//  Created by ktds 19 on 2017. 8. 16..
//  Copyright © 2017년 cjon. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var myStr: String?
    
    @IBOutlet weak var myLabel: UILabel!
    
    @IBAction func onClose(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        if let str = myStr {
            self.myLabel.text = str
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

}

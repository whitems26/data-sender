//
//  SegSecondViewController.swift
//  DataManager
//
//  Created by ktds 19 on 2017. 8. 16..
//  Copyright © 2017년 cjon. All rights reserved.
//

import UIKit

class SegSecondViewController: UIViewController {

    var myStr:String?
    
    @IBOutlet weak var segLabel: UILabel!
    @IBOutlet weak var receiveAppDelegate: UILabel!
    
    @IBAction func onClose(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        segLabel.text = myStr
        
        if let appDelegate = UIApplication.shared.delegate as? AppDelegate {
            receiveAppDelegate.text = appDelegate.myStr
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

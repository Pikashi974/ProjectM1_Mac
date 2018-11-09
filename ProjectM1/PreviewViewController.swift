//
//  PreviewViewController.swift
//  ProjectM1
//
//  Created by etudiant on 09/11/2018.
//  Copyright © 2018 etudiant. All rights reserved.
//

import UIKit

class PreviewViewController: UIViewController {

    @IBAction func cameraButton_TouchUpInside(_ sender: Any) {
        performSegue(withIdentifier: "showView", sender: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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

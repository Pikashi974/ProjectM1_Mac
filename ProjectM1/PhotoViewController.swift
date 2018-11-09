//
//  PhotoViewController.swift
//  ProjectM1
//
//  Created by etudiant on 08/11/2018.
//  Copyright © 2018 etudiant. All rights reserved.
//

import UIKit

class PhotoViewController: UIViewController {

    var takenPhoto: UIImage?
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let availableImage = takenPhoto {
            imageView.image = availableImage
        }
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

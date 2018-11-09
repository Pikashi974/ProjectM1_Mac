//
//  ViewController.swift
//  ProjectM1
//https://stackoverflow.com/questions/33090812/xcode-swift-how-do-i-split-an-image
//  Created by etudiant on 08/11/2018.
//  Copyright © 2018 etudiant. All rights reserved.
//
import UIKit

class ViewController: UIViewController,UIImagePickerControllerDelegate , UINavigationControllerDelegate {
    
    @IBOutlet weak var myImg: UIImageView!
    
    @IBAction func takePhoto(_ sender: AnyObject) {
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.camera) {
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = UIImagePickerControllerSourceType.camera
            imagePicker.allowsEditing = false
            self.present(imagePicker, animated: true, completion: nil)
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func retour(_ sender: Any) {
        performSegue(withIdentifier: "back", sender: nil)
    }
    
    
    @IBAction func photolibraryaction(_ sender: UIButton) {
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.photoLibrary){
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = UIImagePickerControllerSourceType.photoLibrary;
            imagePicker.allowsEditing = true
            self.present(imagePicker, animated: true, completion: nil)
        }
        
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let pickedImage = info[UIImagePickerControllerOriginalImage] as? UIImage {
        myImg.contentMode = .scaleToFill
        myImg.image = pickedImage
        }
        picker.dismiss(animated: true, completion: nil)
    }
    
    var takenPhoto: UIImage?
    
    
    
    @IBAction func cancelButton_touchUpInside(_ sender: Any) {
        performSegue(withIdentifier: "showView", sender: nil)
    }
    
    @IBAction func saveButton_touchUpInside(_ sender: Any) {
        performSegue(withIdentifier: "Mosaique", sender: nil)
    }
    
}

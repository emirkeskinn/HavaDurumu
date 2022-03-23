//
//  ViewController.swift
//  havaDurumu
//
//  Created by Emir Keskin on 15.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var gosterButton: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        gosterButton.layer.cornerRadius = 16
        textField.layer.cornerRadius = 16
    }

  
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = true
        textField.text = ""
    
    }
  
     
    @IBAction func gosterButton(_ sender: Any) {
        
        let city = textField.text ?? ""
        
        if city.isEmpty {
            uyariMesaji(title: "UYARI", message: "Şehir ismi giriniz")
            
        } else {
            
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "DetailsViewController") as! DetailsViewController
            
            vc.city = city
            
            self.show(vc, sender: nil)
            
        }
        
        
      //  performSegue(withIdentifier: "toDetailsVC", sender: nil)
        
    }
    
    func uyariMesaji(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
    }
   
    
}


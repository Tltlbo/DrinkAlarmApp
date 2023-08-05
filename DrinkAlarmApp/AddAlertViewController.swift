//
//  AddAlertViewController.swift
//  DrinkAlarmApp
//
//  Created by 박진성 on 2023/08/05.
//

import UIKit

class AddAlertViewController: UIViewController {

    var pickedDate : ((_ date : Date) -> Void)?
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
  
    @IBAction func dimissButtonTapped(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true,completion: nil)
    }
    
    @IBAction func saveButtonTapped(_ sender: UIBarButtonItem) {
        
        pickedDate?(datePicker.date)
        
        self.dismiss(animated: true,completion: nil)
    }
    

}

//
//  ViewController.swift
//  BDP
//
//  Created by Mac on 10/12/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var firstNameLabel: UILabel!
    
    @IBOutlet weak var middleNameLabel: UILabel!
    
    @IBOutlet weak var lastNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func forwardButton(_ sender: Any) {
        let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        navigationController?.pushViewController(secondViewController, animated: true)
        secondViewController.delegateToProperty = self
        
    }
    
}
extension ViewController : studentDataPassingProtocol{
    func studentDataPassing(student: Student) {
        self.firstNameLabel.text = student.firstName
        self.middleNameLabel.text = student.middleName
        self.lastNameLabel.text = student.lastName
    }
    
    

    
    
}


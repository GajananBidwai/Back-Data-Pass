//
//  SecondViewController.swift
//  BDP
//
//  Created by Mac on 10/12/23.
//

import UIKit
protocol studentDataPassingProtocol
{
    func studentDataPassing(student : Student)
}

class SecondViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    
    @IBOutlet weak var middleNameTextField: UITextField!
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    var delegateToProperty : studentDataPassingProtocol?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func backButton(_ sender: UIButton) {
        guard let delegateProperty = delegateToProperty else {
            return
        }
        
        let retriveFirstName = firstNameTextField.text
        let retriveMiddleName = middleNameTextField.text
        let retriveLastName = lastNameTextField.text
        
        let student = Student(firstName: retriveFirstName!, middleName: retriveMiddleName!, lastName: retriveLastName!)
        
        navigationController?.popViewController(animated: true)
        
        delegateProperty.studentDataPassing(student: student)

    }
    
    

}

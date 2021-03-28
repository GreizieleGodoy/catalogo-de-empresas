//
//  ViewController.swift
//  CatalogoEmpresas
//
//  Created by Greiziele Lasaro Pereira de Godoy on 28/03/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var numberField: UITextField!
    @IBOutlet weak var successLabel: UILabel!
    var catalog: [Empresa] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func stepperDidChanged(_ sender: UIStepper) {
        numberField.text = "\( Int(sender.value) )"
    }
    
    @IBAction func saveDidTapped(_ sender: Any) {
        let newCompany = Empresa(name: nameField.text ?? "", employNumber: Int(numberField.text!)!)
        catalog.append(newCompany)
        showSuccessLabelAndHidden()
        printAllCompanies()
    }
    
    func showSuccessLabelAndHidden() {
        successLabel.isHidden = false
        DispatchQueue.main.asyncAfter(deadline: .now() + 2, execute: {
            self.successLabel.isHidden = true
        })
    }
    
    func printAllCompanies() {
        catalog.forEach({ company in
            print("Nome da empresa: \(company.name!)")
            print("Quantidade de funcionários: \(company.employNumber!)")
        })
    }
}




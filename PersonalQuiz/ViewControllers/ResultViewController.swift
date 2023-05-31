//
//  ResultViewController.swift
//  PersonalQuiz
//
//  Created by Shamkhan Mutuskhanov on 30.05.2023.
//

import UIKit

final class ResultViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func doneButtonPressed(_ sender: UIBarButtonItem) {
        navigationController?.dismiss(animated: true)
    }
}

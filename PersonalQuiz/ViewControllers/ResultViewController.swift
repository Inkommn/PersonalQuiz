//
//  ResultViewController.swift
//  PersonalQuiz
//
//  Created by Shamkhan Mutuskhanov on 30.05.2023.
//

import UIKit

final class ResultViewController: UIViewController {
    // MARK: - IBOutlets
    @IBOutlet var resultEmodjiLabel: UILabel!
    @IBOutlet var resultLabel: UILabel!
    
    // MARK: - Public properties
    var answers: [Answer]! = []
    
    
    // MARK: - UIViewController
    override func viewDidLoad() {
        super.viewDidLoad()
        hideBackButton()
        getMostCommonAnimal()
    }
    
    // MARK: - IBActions
    @IBAction func doneButtonPressed(_ sender: UIBarButtonItem) {
        navigationController?.dismiss(animated: true)
    }
    
    // MARK: - Private methods
    private func hideBackButton() {
        navigationItem.hidesBackButton = true
    }

    private func getMostCommonAnimal() {
        var animalCount: [Animal: Int] = [:]
        
        answers.forEach { answer in
            if let count = animalCount[answer.animal] {
                animalCount[answer.animal] = count + 1
            } else {
                animalCount[answer.animal] = 1
            }
        }
        
        let sortedAnimalCount = animalCount.sorted { $0.value > $1.value }

        if let animal = sortedAnimalCount.first?.key {
            resultEmodjiLabel.text = ("Вы - \(animal.rawValue)")
            resultLabel.text = animal.definition
        }
    }
}

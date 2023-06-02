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
        getMostCommonAnswer()
    }
    
    // MARK: - IBActions
    @IBAction func doneButtonPressed(_ sender: UIBarButtonItem) {
        navigationController?.dismiss(animated: true)
    }
    
    // MARK: - Private properties
    private func hideBackButton() {
        navigationItem.hidesBackButton = true
    }

    private func getMostCommonAnswer() {
        var animalCount: [Animal: Int] = [:]
        
        answers.forEach { answer in
            if let count = animalCount[answer.animal] {
                animalCount[answer.animal] = count + 1
            } else {
                animalCount[answer.animal] = 1
            }
        }
        
        var maxCount = 0
        var mostCommonAnimal: Animal?
     
        for(animal, count) in animalCount {
            if count > maxCount {
                maxCount = count
                mostCommonAnimal = animal
            }
        }
        if let animal = mostCommonAnimal {
            resultEmodjiLabel.text = ("Вы - \(animal.rawValue)")
            resultLabel.text = animal.definition
        }
    }
    
}

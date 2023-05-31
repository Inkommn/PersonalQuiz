//
//  QuestionsViewController.swift
//  PersonalQuiz
//
//  Created by Shamkhan Mutuskhanov on 26.05.2023.
//

import UIKit

final class QuestionsViewController: UIViewController {
    @IBOutlet var questionProgressView: UIProgressView!
    @IBOutlet var questionLabel: UILabel!
    
    @IBOutlet var singleStackView: UIStackView!
    @IBOutlet var singleButtons: [UIButton]!
    
    @IBOutlet var multipleStackView: UIStackView!
    @IBOutlet var multipleLables: [UILabel]!
    @IBOutlet var multipleSwitchs: [UISwitch]!
    
    @IBOutlet var rangedStackView: UIStackView!
    @IBOutlet var rangedSlider: UISlider!
    @IBOutlet var rangedLabels: [UILabel]!
    
    private let questions = Question.getQuestions()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func singleAnswerButtonPressed(_ sender: UIButton) {
    }
    
    
    @IBAction func multipleAnswerButtonPressed() {
    }
    
    @IBAction func rangedAnswerButtonPressed() {
    }
}


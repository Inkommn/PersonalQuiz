//
//  ResultViewController.swift
//  PersonalQuiz
//
//  Created by Shamkhan Mutuskhanov on 30.05.2023.
//

import UIKit

final class ResultViewController: UIViewController {
    @IBOutlet var resultEmodjiLabel: UILabel!
    @IBOutlet var resultLabel: UILabel!
    // MARK: - Public properties
    var answers: [Answer]! = []
    
    
    // MARK: - UIViewController
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - IBActions
    @IBAction func doneButtonPressed(_ sender: UIBarButtonItem) {
        navigationController?.dismiss(animated: true)
    }
    
//    // MARK: - Private properties
//    func getMostCommonElement() -> Answer? {
//        var counts = NSCountedSet(array: [answers ?? ""])
//        var mostCommonAnswer: Answer?
//          var highestCount = 0
//
//        for case let answer as Answer in counts {
//              let count = counts.count(for: answer)
//              if count > highestCount {
//                  mostCommonAnswer = answer
//                  highestCount = count
//              }
//              resultLabel.text = String(mostCommonAnswer)
//          }
//          return mostCommonAnswer
//      }
    
    

}

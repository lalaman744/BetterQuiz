//
//  ViewController.swift
//  BetterQuiz
//
//  Created by Josh Kleinschmidt on 1/27/19.
//  Copyright © 2019 Josh Kleinschmidt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    @IBOutlet weak var firstAnswerButton: UIButton!
    @IBOutlet weak var secondAnswerButton: UIButton!
    @IBOutlet weak var thirdAnswerButton: UIButton!
    @IBOutlet weak var fourthAnswerButton: UIButton!
    
    let questions: [String] = [
        "What is 7+7?",
        "What is the capital of Minnesota?",
        "What is cognac made from?"
    ]
    let firstAnswers: [String] = [
        "14",
        "Minneapolis",
        "Potatoes"
    ]
    let secondAnswers: [String] = [
        "49",
        "St. Paul",
        "Watermelon"
    ]
    let thirdAnswers: [String] = [
        "0",
        "St. Louis Park",
        "Grapes"
    ]
    let fourthAnswers: [String] = [
        "13",
        "Madison",
        "Parsnip"
    ]
    let answerLabelStrings: [String] = [
        "7 + 7 = 14 - Correct!",
        "St. Paul is the capital of Minnesota.",
        "Cognac is made from grapes."
    ]
    var currentQuestionIndex: Int = 0
    
    @IBAction func answerOne(_ sender: UIButton) {
        if questions[currentQuestionIndex] == "What is 7+7?" && firstAnswers[currentQuestionIndex] == "14" {
            correct()
            answerLabel.text = answerLabelStrings[currentQuestionIndex]
        }
        else {
            incorrect()
        }
    }
    @IBAction func answerTwo(_ sender: UIButton) {
        if questions[currentQuestionIndex] == "What is the capital of Minnesota?" && secondAnswers[currentQuestionIndex] == "St. Paul" {
            correct()
            answerLabel.text = answerLabelStrings[currentQuestionIndex]
        }
        else {
            incorrect()
        }
    }
    @IBAction func answerThree(_ sender: UIButton) {
        if questions[currentQuestionIndex] == "What is cognac made from?" && thirdAnswers[currentQuestionIndex] == "Grapes" {
            correct()
            answerLabel.text = answerLabelStrings[currentQuestionIndex]
        }
        else {
            incorrect()
        }
    }
    @IBAction func answerFour(_ sender: UIButton) {
        incorrect()
    }
    @IBAction func nextQuestion(_ sender: UIButton) {
        view.backgroundColor = .white
        currentQuestionIndex += 1
        if currentQuestionIndex == questions.count {
            currentQuestionIndex = 0
        }
        
        let question: String = questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "???"
        updateAnswerButtons()
    }
    func correct() {
        view.backgroundColor = .green
    }
    func incorrect() {
        view.backgroundColor = .red
    }
    func updateAnswerButtons() {
        firstAnswerButton.setTitle(firstAnswers[currentQuestionIndex], for: .normal)
        secondAnswerButton.setTitle(secondAnswers[currentQuestionIndex], for: .normal)
        thirdAnswerButton.setTitle(thirdAnswers[currentQuestionIndex], for: .normal)
        fourthAnswerButton.setTitle(fourthAnswers[currentQuestionIndex], for: .normal)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentQuestionIndex]
        updateAnswerButtons()
        answerLabel.text = "???"
    }


}


//
//  ViewController.swift
//  Quiz
//
//  Created by Christina Wolff on 1/23/19.
//  Copyright © 2019 Christina Wolff. All rights reserved.
// High Point University

import UIKit

class ViewController: UIViewController {
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentQuestionIndex]
    }

    let questions: [String] = [
        "What is 7+7",
        "What is the capital of Vermont?",
        "What is cognac made from?",
        "What is my favorite color?",
        "Who has won the most world series?",
        "What is a flock of crows known as?",
        "What is a baby spider known as?",
        "How many noses do slugs have?"
        
    ]
    
    let answers: [String] = [
        "14",
        "Montpelier",
        "Grapes",
        "Maroon.",
        "The New York Yankees",
        "Murder",
        "Spiderling",
        "4"
        
    ]
    var currentQuestionIndex: Int = 0
    
    @IBAction func showNextQuestion(_ sender: UIButton) {
        currentQuestionIndex += 1
        if currentQuestionIndex == questions.count {
            currentQuestionIndex = 0
        }
        let question: String = questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "???"
    }
    
    @IBAction func showAnswer(_ sender: UIButton) {
        let answer: String = answers[currentQuestionIndex]
        answerLabel.text = answer
    }
}



//
//  ResultViewController.swift
//  SwiftQuiz
//
//  Created by Monica de Paula Gomides on 12/01/22.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var lbAnswered: UILabel!
    @IBOutlet weak var lbCorrect: UILabel!
    @IBOutlet weak var lbWrong: UILabel!
    @IBOutlet weak var lbScore: UILabel!
    
    var totalCorrectAnswers: Int = 0
    var totalAnswers: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lbAnswered.text = "Perguntas respondidas: \(totalAnswers)"
        lbCorrect.text = "Respostas corretas: \(totalCorrectAnswers)"
        lbWrong.text = "Respostas erradas: \(totalAnswers - totalCorrectAnswers)"
        
        let score = (totalAnswers > 0) ? (totalCorrectAnswers*100/totalAnswers) : 0
        
        lbScore.text = "\(score)%"
    }
    
    
}

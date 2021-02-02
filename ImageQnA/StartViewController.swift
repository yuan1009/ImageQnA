//
//  StartViewController.swift
//  ImageQnA
//
//  Created by mac on 2021/2/2.
//

import UIKit

class StartViewController: UIViewController {
    
    var index = 0
    var score = 0
    var questionData = QnA(image: "", question: "", choice: [""], answer: "")
    
    @IBOutlet weak var firstOnelabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var questionImage: UIImageView!
    @IBOutlet var questionButtons: [UIButton]!
    @IBOutlet var scoreLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionArray.shuffle() //打亂Array順序
        showQnA()
    }
    //顯示問題、圖片、選項
    func showQnA() {
        questionLabel.text = questionArray[index].question
        questionImage.image = UIImage(named: questionArray[index].image)
        for i in 0...3 {
            questionButtons[i].setTitle(questionArray[index].choice[i], for: .normal)
        }
        scoreLabel.text = "分數:\(score)"
        firstOnelabel.text = "第 \(index + 1) 題"
    }
    @IBAction func choiceAnswer(_ sender: UIButton) {
        
        if let okAnswer = sender.currentTitle {
            if okAnswer == questionArray[index].answer {
                score = score + 10
            }
            index = index + 1
            if index > 9 {
                performSegue(withIdentifier: "ResultLine", sender: nil)
                
            }else{
                showQnA()
            }
            
        }
        
    }
    @IBSegueAction func showResult(_ coder: NSCoder, sender: Any?, segueIdentifier: String?) -> ResultViewController? {
        let controller = ResultViewController(coder: coder)
        controller?.finalScore = score
        return controller
    }
    
    
    
}

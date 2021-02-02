//
//  ResultViewController.swift
//  ImageQnA
//
//  Created by mac on 2021/2/2.
//

import UIKit

class ResultViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setScore()

        // Do any additional setup after loading the view.
    }
    var finalScore: Int = 0
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    func setScore() {
        scoreLabel.text = String(finalScore)
    }
    @IBAction func nextButton(_ sender: Any) {
        
        back()
        
    }
    func back() {
        let controller = UIAlertController(title: "在玩一次", message: "繼續挑戰吧！", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .cancel, handler: nextPage)
        controller.addAction(okAction)
        present(controller, animated: true, completion: nil)
        
            }
    func nextPage(alert:UIAlertAction!) {
        performSegue(withIdentifier: "back", sender: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

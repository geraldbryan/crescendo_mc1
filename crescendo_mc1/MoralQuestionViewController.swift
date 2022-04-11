//
//  MoralQuestionViewController.swift
//  crescendo_mc1
//
//  Created by Gerald Bryan on 11/04/22.
//

import UIKit

class MoralQuestionViewController: UIViewController {
    
    var firstAnswer = "Dihabiskan Semua"
    var secondAnswer = "Dibawa Kabur"
    var thridAnswer = "Diambil Secukupnya"
    var firstQuestion = "Jika ada banyak makanan enak di meja makan, apa yang harus kamu lakukan?"
    
    @IBOutlet weak var question: UILabel!
    @IBOutlet weak var answerOne: UIButton!
    @IBOutlet weak var answerTwo: UIButton!
    @IBOutlet weak var answerThree: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func pressFirst(_ sender:Any){
        print("wrong")
    }
    
    @IBAction func pressSecond(_ sender:Any){
        print("wrong")
    }
    
    @IBAction func pressThird(_ sender:Any){
        performSegue(withIdentifier: "CorrectAnswer", sender: self)
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

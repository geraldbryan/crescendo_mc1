//
//  MoralStoryViewController.swift
//  crescendo_mc1
//
//  Created by Gerald Bryan on 08/04/22.
//

import UIKit

class MoralStoryViewController: UIViewController {
    
    var isDragging: Bool = false
    
    @IBOutlet weak var answerOne: UILabel!
    @IBOutlet weak var questionOne: UIButton!
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else {
            return
        }
        
        let location = touch.location(in: answerOne)
        
        if answerOne.bounds.contains(location){
            print("abc")
            isDragging = true
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard isDragging, let touch = touches.first else {
            return
        }
        
        let location = touch.location(in: view)
        
        answerOne.frame.origin.x = location.x
        answerOne.frame.origin.x = location.y
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        isDragging = false
    }

    override func viewDidLoad() {
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func answerOne(_ sender: Any) {
       print("abc")
    }
    
    @IBAction func questionOne(_ sender: Any) {
        
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

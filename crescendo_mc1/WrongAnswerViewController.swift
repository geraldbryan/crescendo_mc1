//
//  WrongAnswerViewController.swift
//  crescendo_mc1
//
//  Created by Gerald Bryan on 12/04/22.
//

import UIKit

class WrongAnswerViewController: UIViewController {
    
    @IBOutlet weak var sadGIF: UIImageView!
    
    let Gif = UIImage.gif(name: "coba-lagi-unscreen")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sadGIF.image = Gif

        // Do any additional setup after loading the view.
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

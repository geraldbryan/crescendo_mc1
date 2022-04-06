//
//  StoryController.swift
//  crescendo_mc1
//
//  Created by Gerald Bryan on 06/04/22.
//

import UIKit

class StoryController: UIViewController {
    
    var story1 = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
    
    var story2 = "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    
    var firstImage: UIImage = UIImage(named: "10000-hours.jpeg")!
    
    var secondImage: UIImage = UIImage(named: "child-eat.jpeg")!
    
    @IBOutlet weak var storyImage: UIImageView!
    @IBOutlet weak var previousButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var storyText: UITextView!
    
    override func viewDidLoad() {
        
        storyImage.image = firstImage
        
        storyText.text = story1
        
        super.viewDidLoad()

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

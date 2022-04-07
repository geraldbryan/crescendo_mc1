//
//  StoryController.swift
//  crescendo_mc1
//
//  Created by Gerald Bryan on 06/04/22.
//

import UIKit

class StoryController: UIViewController {
    
    func ChangeStory() {
        storyImage.image = imageBackground[currStory]
        storyText.text = storyTemplate[currStory]
     }
    
    var storyTemplate = ["Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                 "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.","abcededefiwfheifheuhfebfeb"]
    var imageBackground = [UIImage(named: "10000-hours.jpeg"),UIImage(named: "child-eat.jpeg"),UIImage(named: "happy.jpeg")]
        
    var currStory: Int = 0
    
    @IBOutlet weak var storyImage: UIImageView!
    @IBOutlet weak var previousButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var storyText: UITextView!
    @IBOutlet weak var voiceOverMute: UIButton!
    @IBOutlet weak var beforeButtom: UIButton!
    
    override func viewDidLoad() {
        
        storyImage.image = imageBackground[currStory]
        storyText.text = storyTemplate[currStory]
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
                
        
    }
    
    @IBAction func pressNext(_ sender: Any) {
        if currStory ==  storyTemplate.count-1 {
            currStory = 0
        } else {
            currStory += 1
        }
        ChangeStory()
    }
    
    @IBAction func pressPrevious(_ sender: Any) {
        if currStory == 0 {
            currStory = storyTemplate.count-1
        } else {
            currStory -= 1
        }
        ChangeStory()
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

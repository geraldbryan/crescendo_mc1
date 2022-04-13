//
//  StoryController.swift
//  crescendo_mc1
//
//  Created by Gerald Bryan on 06/04/22.
//

import UIKit
import AVFoundation

class StoryController: UIViewController {
    
    func ChangeStory() {
        storyImage.image = imageBackground[currStory]
        storyText.text = storyTemplate[currStory]
     }
    
    var storyTemplate = ["Di suatu desa terpencil, ada seorang anak bernama Gali Bayu. Gali sangat suka makan, dan tidak pernah kenyang.",
                 "Hujan kencang yang melanda desa Gali membuat panen Ayah Gali banyak yang rusak dan hanya sedikit yang bagus.", "Pada malam hari, Gali mengambil salah satu karung kacang di gudang. Gali pun memakannya dengan rakus hingga tidak tersisa.","Keesokan harinya Gali sakit perut dan menangis sambil memegang perutnya. Gali akhirnya berkata jujur kepada Ibunya bahwa dia lah yang memakan habis kacang yang disimpan Ayah.", "Ayah yang mendengar hal tersebut memberitahu Gali, bahwa karung kacang yang dimakan Gali berisi kacang sisa yang busuk dan tidak bagus. Ayah akhirnya menasehati Gali untuk tidak menjadi rakus."]
    
    var imageBackground = [UIImage.gif(name: "story1"),UIImage(named: "story2.png"),UIImage(named: "story3.png"),UIImage.gif(name: "story4"),UIImage(named: "story5.png")]
        
    var currStory: Int = 0
    
    var isMute: Int = 0
    
    var tokecangSong = AVAudioPlayer()
    
    
    @IBOutlet weak var storyImage: UIImageView!
    @IBOutlet weak var previousButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var storyText: UITextView!
    @IBOutlet weak var voiceOverMute: UIButton!
    
    override func viewDidLoad() {
        
        storyImage.image = imageBackground[currStory]
        storyText.text = storyTemplate[currStory]
        
        previousButton.setTitle("Kembali", for: .normal)
        nextButton.setTitle("Selanjutnya", for: .normal)
        
        super.viewDidLoad()
        
        let path = Bundle.main.path(forResource: "voiceover_tokecang", ofType: ".mp3")!
        
        let url = URL(fileURLWithPath: path)
        
        do {
            tokecangSong = try AVAudioPlayer(contentsOf: url)
            
            tokecangSong.prepareToPlay()
            }
        catch let error as NSError {
            print(error.description)
        }
        
        tokecangSong.play()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func pressNext(_ sender: Any) {
        if currStory ==  storyTemplate.count-1 {
            performSegue(withIdentifier: "Moral", sender: self)
            tokecangSong.stop()
        } else if currStory ==  storyTemplate.count-2{
            currStory += 1
            nextButton.setTitle("Waktunya Kuis", for: .normal)
        } else {
            currStory += 1
            previousButton.setTitle("Sebelumnya", for: .normal)
        }
        ChangeStory()
    }
    
    @IBAction func pressPrevious(_ sender: Any) {
        if currStory == 0 {
            performSegue(withIdentifier: "StoryTitle", sender: self)
            tokecangSong.stop()
        } else if currStory == 1{
            currStory -= 1
            previousButton.setTitle("Kembali", for: .normal)
        } else {
            currStory -= 1
            nextButton.setTitle("Selanjutnya", for: .normal)
        }
        ChangeStory()
    }
    
    @IBAction func muteVO(_ sender: UIButton) {
        if isMute == 0 {
            tokecangSong.volume = 1.0
            sender.setImage(UIImage(systemName: "speaker.fill"), for: .normal)
            isMute = 1
        } else {
            tokecangSong.volume = 0.0
            sender.setImage(UIImage(systemName: "speaker.slash.fill"), for: .normal)
            isMute = 0
        }
        
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

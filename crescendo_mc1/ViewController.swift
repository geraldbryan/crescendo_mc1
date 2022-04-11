//
//  ViewController.swift
//  crescendo_mc1
//
//  Created by Gerald Bryan on 05/04/22.
//
// import library

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    //Data "TOKECANG" Song
    var songTitle = "Tokecang"
    var songAuthor = "R.C. Hardjosubroto"
    var songComposer = "VJ Raja Olan"
    var songArea = "Jawa Barat"
    var originalLyrics = "Tokecang tokecang bala gendir tosblong \n\nAngeun kacang angeun kacang sapependil kosong \n\nAya listrik di masigit meuni caang katingalna \n\nAya istri jangkung alit karangan dina pipina \n\nTokecang tokecang bala gendir tosblong \n\nAngeun kacang angeun kacang sapependil kosong."
    
    var indonesianLyrics = "Tokecang tokecang mencuri kenndil bolong \nSayur kacang sayur kacang seperiuk kosong \nAda listrik di masigit begitu terang terlihat \nAda perempuan tinggi langsing ada tahi lalat di pipinya \nTokecang tokecang bala gendir tosblong \nSayur kacang sayur kacang seperiuk kosong."
    
    var backImage: UIImage = UIImage(named: "background-song.png")!
    
    var covImage: UIImage = UIImage(named: "happy.jpeg")!
    
    var tokecangSong = AVAudioPlayer()
    
    // An animated UIImage
    let Gif = UIImage.gif(name: "playsong")
    
    //var isPlaying = false
    
    @objc func updateTime() {
        var currentTime = Int(tokecangSong.currentTime)
        var duration = Int(tokecangSong.duration)
        var total = duration - currentTime

        var minutes = currentTime/60
        var seconds = currentTime % 60
        
        var minutesLeft = total/60
        var secondsLeft = total % 60

        currTime.text = NSString(format: "%02d:%02d", minutes,seconds) as String
        timeLeft.text = NSString(format: "%02d:%02d", minutesLeft,secondsLeft) as String
    }
    
    var timer: Timer?
    var updateTimer: Timer?
    
    @objc func updateSlider() {
        musicDuration.value = Float(tokecangSong.currentTime)
        }
        
    //IBOutlet
    @IBOutlet weak var coverImage: UIImageView!
    @IBOutlet weak var backgroundImage: UIImageView!
    
    @IBOutlet weak var lyricsView: UITextView!
    @IBOutlet weak var composerName: UILabel!
    
    @IBOutlet weak var musicDuration: UISlider!
    
    @IBOutlet weak var musicTitle: UILabel!
    @IBOutlet weak var musicAuthor: UILabel!
    @IBOutlet weak var musicArea: UILabel!
    @IBOutlet weak var currTime: UILabel!
    @IBOutlet weak var timeLeft: UILabel!
    
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var backPage: UIButton!
    
    func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
        playButton.setImage(UIImage(systemName: "play.fill"), for: .normal)
    }
    //Data Control
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Tokecang Music
        let path = Bundle.main.path(forResource: "tokecang_song", ofType: ".mp3")!
        
        let url = URL(fileURLWithPath: path)
        
        do {
            tokecangSong = try AVAudioPlayer(contentsOf: url)
            
            tokecangSong.prepareToPlay()
            }
        catch let error as NSError {
            print(error.description)
        }
        
        //Setup background image
        backgroundImage.image = backImage
        
        //Setup Image cover
        coverImage.image = Gif
        
        //Setup Original Lyrics
        lyricsView.text = originalLyrics
        
        composerName.text = songComposer
        
        musicAuthor.text = songAuthor
        
        musicDuration.maximumValue = Float(tokecangSong.duration)
        
        timeLeft.text = NSString(format: "%02d:%02d", (Int(tokecangSong.duration)-Int(tokecangSong.currentTime))/60,(Int(tokecangSong.duration)-Int(tokecangSong.currentTime))%60) as String
        // Do any additional setup after loading the view.
    }
    
    @IBAction func pressButton(_ sender: Any) {
        if tokecangSong.isPlaying {
            //setup player and play
            playButton.setImage(UIImage(systemName: "play.fill"), for: .normal)
            tokecangSong.pause()
            musicDuration.value = 0.0
            updateTime()
        } else {
            // stop playing
            tokecangSong.delegate = self
            tokecangSong.play()
            playButton.setImage(UIImage(systemName: "pause.fill"), for: .normal)
            timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(self.updateSlider), userInfo: nil, repeats: true)
            updateTimer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(self.updateTime), userInfo: nil, repeats: true)
            updateTime()
        }
        
    }
    
    @IBAction func backPage(_ sender: Any) {
        performSegue(withIdentifier: "BackPage", sender: self)
        tokecangSong.stop()
    }


}


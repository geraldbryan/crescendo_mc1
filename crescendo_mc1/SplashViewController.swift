//
//  SplashViewController.swift
//  crescendo_mc1
//
//  Created by Gerald Bryan on 10/04/22.
//

import UIKit
import AVKit
import AVFoundation

class SplashViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let player =  AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "4 Sec_Logo", ofType: ".MOV")!))
        
        let layer = AVPlayerLayer(player: player)
        layer.frame = view.bounds
        view.layer.addSublayer(layer)
        
        player.play()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 4.3) { [unowned self] in
            self.performSegue(withIdentifier: "HomePage", sender: nil)
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

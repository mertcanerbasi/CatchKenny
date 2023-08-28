//
//  ViewController.swift
//  CatchKenny
//
//  Created by Mertcan Erbaşı on 28.08.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var currentScoreLabel: UILabel!
    @IBOutlet weak var keeny1ImageView: UIImageView!
    @IBOutlet weak var kenny2ImageView: UIImageView!
    @IBOutlet weak var kenny3ImageView: UIImageView!
    @IBOutlet weak var kenny4ImageView: UIImageView!
    @IBOutlet weak var kenny5ImageView: UIImageView!
    @IBOutlet weak var kenny6ImageView: UIImageView!
    @IBOutlet weak var kenny7ImageView: UIImageView!
    @IBOutlet weak var kenny8ImageView: UIImageView!
    @IBOutlet weak var kenny9ImageView: UIImageView!
    @IBOutlet weak var highestScoreLabel: UILabel!
    var timer = Timer()


    var timerCounter = 10
    var currentScore = 0
    var localDb = UserDefaults.standard
    var highestScore = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        timerLabel.text = "\(timerCounter)"
        currentScoreLabel.text = "Score: \(currentScore)"
        highestScore = localDb.integer(forKey: "highestScore")
        highestScoreLabel.text = "High Score: \(highestScore)"


        keeny1ImageView.isUserInteractionEnabled = true
        kenny2ImageView.isUserInteractionEnabled = true
        kenny3ImageView.isUserInteractionEnabled = true
        kenny4ImageView.isUserInteractionEnabled = true
        kenny5ImageView.isUserInteractionEnabled = true
        kenny6ImageView.isUserInteractionEnabled = true
        kenny7ImageView.isUserInteractionEnabled = true
        kenny8ImageView.isUserInteractionEnabled = true
        kenny9ImageView.isUserInteractionEnabled = true


        let tapGesture1 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let tapGesture2 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let tapGesture3 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let tapGesture4 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let tapGesture5 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let tapGesture6 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let tapGesture7 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let tapGesture8 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let tapGesture9 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))




        keeny1ImageView.addGestureRecognizer(tapGesture1)
        kenny2ImageView.addGestureRecognizer(tapGesture2)
        kenny3ImageView.addGestureRecognizer(tapGesture3)
        kenny4ImageView.addGestureRecognizer(tapGesture4)
        kenny5ImageView.addGestureRecognizer(tapGesture5)
        kenny6ImageView.addGestureRecognizer(tapGesture6)
        kenny7ImageView.addGestureRecognizer(tapGesture7)
        kenny8ImageView.addGestureRecognizer(tapGesture8)
        kenny9ImageView.addGestureRecognizer(tapGesture9)

        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunction), userInfo: nil, repeats: true)

    }

    @objc func increaseScore (){
        currentScore += 1
        currentScoreLabel.text = "Score: \(currentScore)"

    }


    @objc func timerFunction(){
        timerCounter -= 1
        timerLabel.text = "\(timerCounter)"
        let randomInt = Int.random(in: 1...9)

        switch randomInt{
            case 1:
                keeny1ImageView.isHidden = false
                kenny2ImageView.isHidden = true
                kenny3ImageView.isHidden = true
                kenny4ImageView.isHidden = true
                kenny5ImageView.isHidden = true
                kenny6ImageView.isHidden = true
                kenny7ImageView.isHidden = true
                kenny8ImageView.isHidden = true
                kenny9ImageView.isHidden = true
            case 2:
                keeny1ImageView.isHidden = true
                kenny2ImageView.isHidden = false
                kenny3ImageView.isHidden = true
                kenny4ImageView.isHidden = true
                kenny5ImageView.isHidden = true
                kenny6ImageView.isHidden = true
                kenny7ImageView.isHidden = true
                kenny8ImageView.isHidden = true
                kenny9ImageView.isHidden = true
            case 3:
                keeny1ImageView.isHidden = true
                kenny2ImageView.isHidden = true
                kenny3ImageView.isHidden = false
                kenny4ImageView.isHidden = true
                kenny5ImageView.isHidden = true
                kenny6ImageView.isHidden = true
                kenny7ImageView.isHidden = true
                kenny8ImageView.isHidden = true
                kenny9ImageView.isHidden = true
            case 4:
                keeny1ImageView.isHidden = true
                kenny2ImageView.isHidden = true
                kenny3ImageView.isHidden = true
                kenny4ImageView.isHidden = false
                kenny5ImageView.isHidden = true
                kenny6ImageView.isHidden = true
                kenny7ImageView.isHidden = true
                kenny8ImageView.isHidden = true
                kenny9ImageView.isHidden = true
            case 5:
                keeny1ImageView.isHidden = true
                kenny2ImageView.isHidden = true
                kenny3ImageView.isHidden = true
                kenny4ImageView.isHidden = true
                kenny5ImageView.isHidden = false
                kenny6ImageView.isHidden = true
                kenny7ImageView.isHidden = true
                kenny8ImageView.isHidden = true
                kenny9ImageView.isHidden = true
            case 6:
                keeny1ImageView.isHidden = true
                kenny2ImageView.isHidden = true
                kenny3ImageView.isHidden = true
                kenny4ImageView.isHidden = true
                kenny5ImageView.isHidden = true
                kenny6ImageView.isHidden = false
                kenny7ImageView.isHidden = true
                kenny8ImageView.isHidden = true
                kenny9ImageView.isHidden = true
            case 7:
                keeny1ImageView.isHidden = true
                kenny2ImageView.isHidden = true
                kenny3ImageView.isHidden = true
                kenny4ImageView.isHidden = true
                kenny5ImageView.isHidden = true
                kenny6ImageView.isHidden = true
                kenny7ImageView.isHidden = false
                kenny8ImageView.isHidden = true
                kenny9ImageView.isHidden = true
            case 8:
                keeny1ImageView.isHidden = true
                kenny2ImageView.isHidden = true
                kenny3ImageView.isHidden = true
                kenny4ImageView.isHidden = true
                kenny5ImageView.isHidden = true
                kenny6ImageView.isHidden = true
                kenny7ImageView.isHidden = true
                kenny8ImageView.isHidden = false
                kenny9ImageView.isHidden = true
            case 9:
                keeny1ImageView.isHidden = true
                kenny2ImageView.isHidden = true
                kenny3ImageView.isHidden = true
                kenny4ImageView.isHidden = true
                kenny5ImageView.isHidden = true
                kenny6ImageView.isHidden = true
                kenny7ImageView.isHidden = true
                kenny8ImageView.isHidden = true
                kenny9ImageView.isHidden = false
            default:
                print("Exception")
        }

        if timerCounter < 0{
            timer.invalidate()
            timerLabel.text = "Time's Up"
            let alertController = UIAlertController(
                title: "Time's Up",
                message: "Do you want to play again",
                preferredStyle: .alert
            )

            // Create an OK action
            let okAction = UIAlertAction(title: "OK", style: .cancel) { _ in
                if self.highestScore < self.currentScore {
                    self.localDb.set(self.currentScore, forKey: "highestScore")
                }
            }
            let replayAction = UIAlertAction(title: "Replay", style: .default){ [self]
                _ in

                if self.highestScore < self.currentScore {
                    self.localDb.set(self.currentScore, forKey: "highestScore")
                    highestScoreLabel.text = "High Score: \(highestScore)"
                }
                self.timerCounter = 10
                self.currentScore = 0
                currentScoreLabel.text = "Score: \(currentScore)"
                self.timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.timerFunction), userInfo: nil, repeats: true)
            }

            // Add the OK action to the alert controller
            alertController.addAction(okAction)
            alertController.addAction(replayAction)

            // Present the alert controller
            present(alertController, animated: true, completion: nil)

        }

    }


}


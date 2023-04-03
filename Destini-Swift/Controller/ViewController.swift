//
//  ViewController.swift
//  Destini-Swift
//
//  Created by Eren Candan on 3.04.2023.
//

import UIKit

class ViewController: UIViewController {
    var storyController = StoryBrain()

    @IBAction func choiceSelected(_ sender: UIButton) {
        storyController.nextStory((sender.titleLabel?.text)!) // we know there wont be nil value
        updateUI()
    }

    @IBOutlet var choiceTwoButton: UIButton!
    @IBOutlet var choiceOneButton: UIButton!
    @IBOutlet var storyLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }

    func updateUI() {
        storyLabel.text = storyController.getStoryTitle()
        choiceOneButton.setTitle(storyController.getChoice1(), for: .normal)
        choiceTwoButton.setTitle(storyController.getChoice2(), for: .normal)
    }
}

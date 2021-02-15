//
//  ViewController.swift
//  WordGarden
//
//  Created by Lindsay Penkrat on 2/15/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var wordsGuessedLabel: UILabel!
    @IBOutlet weak var wordsRemainingLabel: UILabel!
    @IBOutlet weak var wordsMissedLabel: UILabel!
    @IBOutlet weak var wordsInGame: UILabel!
    
    @IBOutlet weak var wordBeingRevealedLabel: UILabel!
    @IBOutlet weak var guessedLetterTextField: UITextField!
    @IBOutlet weak var guessLetterButton: UIButton!
   
    @IBOutlet weak var playAgainButton: UIButton!
    
    @IBOutlet weak var gameStatusMessageLabel: UILabel!
    
    @IBOutlet weak var flowerImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let text = guessedLetterTextField.text!
        guessLetterButton.isEnabled =  !(text.isEmpty)
        // Do any additional setup after loading the view.
    }
    
    func updateUIAfterGuess(){
        guessedLetterTextField.resignFirstResponder()
        guessedLetterTextField.text! = ""
        guessLetterButton.isEnabled = false
        
    }
    
    @IBAction func guessedLetterFieldChanged(_ sender: UITextField) {
        
        let text = guessedLetterTextField.text!
        guessLetterButton.isEnabled =  !(text.isEmpty)
    }
    @IBAction func doneKeyPressed(_ sender: UITextField) {
        updateUIAfterGuess()
    }
    
    @IBAction func guessLetterButtonPressed(_ sender: UIButton) {
       
    }
    
    @IBAction func playAgainButtonPressed(_ sender: UIButton) {
    }
}


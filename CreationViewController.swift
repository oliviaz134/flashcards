//
//  CreationViewController.swift
//  Flashcards
//
//  Created by Olivia Zhang on 9/27/22.
//

import UIKit

class CreationViewController: UIViewController {

    var flashcardsController: ViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        questionTextField.text = initialQuestion
        answerTextField.text = initialAnswer

    }
    
    
    @IBAction func didTapOnCancel(_ sender: Any) {
        // Dismiss
        dismiss(animated: true)
    }
    
    @IBOutlet weak var questionTextField: UITextField!
    @IBOutlet weak var answerTextField: UITextField!
    @IBOutlet weak var extraAnswerTextField1: UITextField!
    @IBOutlet weak var extraAnswerTextField2: UITextField!
    var initialQuestion: String?
    var initialAnswer: String?
    
    @IBAction func didTapOnDone(_ sender: Any) {
        
        // Get the text in the question text field
        let questionText = questionTextField.text
        
        // Get the text in the answer text field
        let answerText = answerTextField.text
        
        // Get the text in extra answer #1 text field
        let extraAnswer1Text = extraAnswerTextField1.text
        
        // Get the text in extra answer #2 text field
        let extraAnswer2Text = extraAnswerTextField2.text
        
        // Check if text fields are empty
        if questionText == nil || answerText == nil || questionText!.isEmpty || answerText!.isEmpty {
            
            // Show error
            let alert = UIAlertController(title: "Missing Text", message: "You need to enter both a question and an answer.", preferredStyle: .alert)
            
            let okAction = UIAlertAction(title: "Ok", style: .default)
            alert.addAction(okAction)
            
            present(alert, animated: true)
            
        } else {
            
            // Call the function to update the flashcard
            flashcardsController.updateFlashcard(question:questionText!, answer: answerText!, extraAnswer1: extraAnswer1Text!, extraAnswer2: extraAnswer2Text!)
            
            // Dismiss
            dismiss(animated: true)
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

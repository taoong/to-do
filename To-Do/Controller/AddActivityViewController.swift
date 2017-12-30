//
//  AddActivityViewController.swift
//  To-Do
//
//  Created by Tao Ong on 12/29/17.
//  Copyright © 2017 Tao Ong. All rights reserved.
//

import UIKit

class AddActivityViewController: UIViewController, UITextFieldDelegate, UITextViewDelegate {
    
    let datePicker = UIDatePicker()
    let dateFormatter = DateFormatter()

    @IBOutlet weak var activityTitle: UITextField!
    @IBOutlet weak var activityDueDate: UITextField!
    @IBOutlet weak var activityDescription: UITextView!
    
    @IBAction func addActivity(_ sender: UIBarButtonItem) {
        let title = activityTitle.text!
        let description = activityDescription.text!
        dateFormatter.dateFormat = "MM-dd-yyyy HH:mm"
        let date = activityDueDate.text!
        activities.append(Activity(title: title, dueDate: date, description: description))
            
        
//        let alertController = UIAlertController(title: "Error", message:
//            "Title and due date must be filled in", preferredStyle: UIAlertControllerStyle.alert)
//        alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.default, handler: { (action) in
//            alertController.dismiss(animated: true, completion: nil)
//        }))
//        self.present(alertController, animated: true, completion: nil)
        performSegue(withIdentifier: "unwindToList", sender: self)
        
    }
    
    func createDatePicker() {
        // format for date picker
        datePicker.datePickerMode = .dateAndTime
        
        // toolbar
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        // bar button item
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(dateChosen))
        toolbar.setItems([doneButton], animated: false)
        
        activityDueDate.inputAccessoryView = toolbar
        
        // assigning date picker to text field
        activityDueDate.inputView = datePicker
    }
    
    @objc func dateChosen() {
        activityDueDate.text = "\(datePicker.date)"
        self.view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createDatePicker()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

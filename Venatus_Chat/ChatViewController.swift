//
//  ChatViewController.swift
//  Venatus_Chat
//
//  Created by Brian on 3/27/16.
//  Copyright © 2016 Brian. All rights reserved.
//

import UIKit

class ChatViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
  
    @IBOutlet weak var chatField: UITextField!
    @IBOutlet weak var sendButton: UIButton!
    @IBOutlet weak var chatView: UITableView!
    @IBOutlet var keyboardTap: UITapGestureRecognizer!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

        override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
//   this is bugged for some reason, apaprently it has to do with ios 9 and BSAction (literally the name).
  
    @IBAction func beganEditing(sender: AnyObject) {
        print("THIS GETS CALLED")
            UIView.animateWithDuration(0.2, animations: { () -> Void in
                self.chatField.center.y -= 300
                self.sendButton.center.y -= 300
            })
        
    }
    /*@IBAction func onKeyboardChange(sender: UITapGestureRecognizer) {
        print("THIS GETS CALLED")
        if sender.state == UIGestureRecognizerState.Changed  {
            UIView.animateWithDuration(0.2, animations: { () -> Void in
                self.chatField.center.y -= 300
                self.sendButton.center.y -= 300
            })
        }
    
    }*/
  
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let cell = 20
        if cell == 20 {
        return cell
       }
  
    }
  



 
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = chatView.dequeueReusableCellWithIdentifier("ChatCell", forIndexPath: indexPath) as! ChatTableViewCell
        
       
        return cell
   
    }
  


    
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
 
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        
    
        
        
            }
}

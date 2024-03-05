//
//  EventsViewController.swift
//  charity360
//
//  Created by admin on 03/03/24.
//

import UIKit

class EventsViewController: UIViewController {

    @IBOutlet weak var segmentOutlet: UISegmentedControl!
    
    @IBOutlet weak var upcomingView: UIView!
    
    @IBOutlet weak var pastView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // MARK: - Navigation

     
     @IBAction func segmentedAction(_ sender: UISegmentedControl) {
         switch sender.selectedSegmentIndex {
         case 0:
             self.view.bringSubviewToFront(upcomingView)
         case 1:
             self.view.bringSubviewToFront(pastView)
         default:
             break
         }
     }
     
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    /*
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
     */

}

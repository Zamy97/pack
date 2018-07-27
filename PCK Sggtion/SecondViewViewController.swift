//
//  SecondViewViewController.swift
//  PCK Sggtion
//
//  Created by Akhtar zaman on 7/27/18.
//  Copyright © 2018 Akhtar zaman. All rights reserved.
//

import UIKit
import CVCalendar

class SecondViewViewController: UIViewController, CVCalendarViewDelegate, CVCalendarMenuViewDelegate {
    func presentationMode() -> CalendarMode {
        return.monthView
    }
    
    func firstWeekday() -> Weekday {
        return.monday
    }
    
 
    @IBOutlet weak var menuView: CVCalendarMenuView!

     @IBOutlet weak var calendarView: CVCalendarView!

    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        menuView.commitMenuViewUpdate()
        calendarView.commitCalendarViewUpdate()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

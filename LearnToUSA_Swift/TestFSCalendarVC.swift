//
//  TestFSCalendarVC.swift
//  LearnToUSA_Swift
//
//  Created by luoxingrong on 2020/6/30.
//  Copyright © 2020 luoxingrong. All rights reserved.
//

import UIKit
import FSCalendar

class TestFSCalendarVC: UIViewController,FSCalendarDelegate {

    @IBOutlet var fsCalendarView: FSCalendar!
    var calendar2 = FSCalendar()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        fsCalendarView.delegate = self
    }

    func calendar(_ calendar: FSCalendar, didSelect date: Date, at monthPosition: FSCalendarMonthPosition) {
        let formatter = DateFormatter()
        formatter.dateFormat = "EEEE YYYY.MM.dd hh:mm:ss"
//        formatter.timeZone = TimeZone(abbreviation: "JST +09:00")
        let string = formatter.string(from: date)
        print("\(string)")
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        calendar2.frame = CGRect(x: 0, y: 340, width: view.frame.width, height: 300)
        calendar2.delegate = self
        view.addSubview(calendar2)
    }
    

}

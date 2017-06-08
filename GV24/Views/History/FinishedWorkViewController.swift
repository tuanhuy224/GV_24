//
//  FinishedWorkViewController.swift
//  GV24
//
//  Created by admin on 6/6/17.
//  Copyright © 2017 admin. All rights reserved.
//

import UIKit

class FinishedWorkViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.automaticallyAdjustsScrollViewInsets = false
        tableView.register(UINib(nibName: "FinishedWorkCell", bundle: nil), forCellReuseIdentifier: "FinishedWorkCell")
        tableView.register(UINib(nibName: "WorkerViewCell", bundle: nil), forCellReuseIdentifier: "WorkerCell")
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        title = "Công việc hoàn thành"
    }

}

extension FinishedWorkViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell!

        if indexPath.section == 0 {
            cell = tableView.dequeueReusableCell(withIdentifier: "FinishedWorkCell", for: indexPath) as! FinishedWorkCell
        }else {
            cell = tableView.dequeueReusableCell(withIdentifier: "WorkerCell", for: indexPath) as! WorkerViewCell
        }
        
        return cell
    }
}

extension FinishedWorkViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 240
        }
        return 170
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 1 {
            return "NGƯỜI THỰC HIỆN"
        }
        return ""
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        let header = view as! UITableViewHeaderFooterView
        header.textLabel?.textColor = UIColor.lightGray
        header.textLabel?.font = UIFont(name: "SF UI Text Light", size: 16)
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 20
    }
}

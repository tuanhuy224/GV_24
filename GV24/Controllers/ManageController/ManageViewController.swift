//
//  ManageViewController.swift
//  GV24
//
//  Created by HuyNguyen on 6/1/17.
//  Copyright © 2017 admin. All rights reserved.
//

import UIKit

class ManageViewController: UIViewController {

    @IBOutlet weak var tbManage: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tbManage.register(UINib(nibName:"HistoryViewCell",bundle:nil), forCellReuseIdentifier: "historyCell")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension ManageViewController:UITableViewDataSource{

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tbManage.dequeueReusableCell(withIdentifier: "historyCell", for: indexPath) as? HistoryViewCell
        return cell!
    }
}

extension ManageViewController:UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 94
    }

}

//
//  AroundItemController.swift
//  GV24
//
//  Created by HuyNguyen on 6/7/17.
//  Copyright © 2017 admin. All rights reserved.
//

import UIKit

class AroundItemController: UIViewController {
    @IBOutlet weak var tbAround: UITableView!
    var id:String?
    override func viewDidLoad() {
        super.viewDidLoad()
        tbAround.register(UINib(nibName:"HistoryViewCell",bundle:nil), forCellReuseIdentifier: "historyCell")
        sendDelegate()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    func sendDelegate(){
        
    }
}
extension AroundItemController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:HistoryViewCell = tbAround.dequeueReusableCell(withIdentifier: "historyCell", for: indexPath) as! HistoryViewCell
        
        return cell
    }
}
extension AroundItemController:UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 95
    }
}

extension AroundItemController:sendIdForViewDetailDelegate{
    func sendId(id: String) {
        self.id = id
    }
}

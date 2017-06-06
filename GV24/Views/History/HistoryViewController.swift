//
//  HistoryViewController.swift
//  GV24
//
//  Created by HuyNguyen on 5/29/17.
//  Copyright © 2017 admin. All rights reserved.
//

import UIKit

class HistoryViewController: BaseViewController {
    @IBOutlet weak var historyTableView: UITableView!

    @IBOutlet weak var segmentContainer: UIView!
    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var fromDateContainer: UIView!
    
    var currentViewController: UIViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        historyTableView.register(UINib(nibName:"HistoryViewCell",bundle:nil), forCellReuseIdentifier: "historyCell")
        
        // Do any additional setup after loading the view.
        
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        navigationController?.navigationBar.shadowImage = UIImage()
        self.automaticallyAdjustsScrollViewInsets = false
        customControl()
        print("token = \(UserDefaultHelper.getToken())")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.title = "Lịch sự công việc"
        segmentControl.selectedSegmentIndex = 0
    }
    
//    var currentViewController: UIViewController?
    
    @IBAction func segmentValueChanged(_ segment: UISegmentedControl) {
        switch segment.selectedSegmentIndex {
        case 0:
            print("Do nothing.")
            break;
        case 1:
            let vc = OwnerHistoryViewController()
            let backItem = UIBarButtonItem()
            backItem.title = "Back"
            navigationItem.backBarButtonItem = backItem
            navigationController?.pushViewController(vc, animated: true)
            break;
        default:
            print("")
        }
    }
    
    fileprivate func customControl() {
        let topBorder = UIView(frame: CGRect(x: 0, y: 0, width: fromDateContainer.frame.size.width, height: 1.0))
        topBorder.backgroundColor = UIColor.lightGray
        topBorder.alpha = 0.3
        let bottomBorder = UIView(frame: CGRect(x: 0, y: segmentContainer.frame.size.height - 1, width: segmentContainer.frame.size.width, height: 1.0))
        bottomBorder.backgroundColor = UIColor.lightGray
        bottomBorder.alpha = 0.3
        fromDateContainer.addSubview(topBorder)
        fromDateContainer.addSubview(bottomBorder)
    }


}
extension HistoryViewController:UITableViewDataSource{

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell = (historyTableView.dequeueReusableCell(withIdentifier: "historyCell", for: indexPath) as? HistoryViewCell)!
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        navigationController?.pushViewController(FinishedWorkViewController(), animated: true)
    }
}
extension HistoryViewController:UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
}

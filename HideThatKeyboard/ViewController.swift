import Foundation

class TableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    let table = UITableView(frame: UIScreen.mainScreen().bounds)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        table.dataSource = self
        table.delegate = self
        
        self.view.backgroundColor = UIColor.whiteColor()
        self.view.addSubview(table)
        
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        
        view.endEditing(true)
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        
        cell.backgroundColor = UIColor.whiteColor()
        cell.selectionStyle = .None
        
        let textField = UITextField()
        
        textField.tag = 50
        textField.keyboardType = UIKeyboardType.DecimalPad
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.autocapitalizationType = UITextAutocapitalizationType.None
        textField.textAlignment = NSTextAlignment.Right
        textField.text = "5"
        
        cell.contentView.addSubview(textField)
        
        let views = ["textField":textField,"view": cell.contentView]
        
        let horizontallayoutContraints = NSLayoutConstraint.constraintsWithVisualFormat("H:|-[textField]-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: views)
        let verticallayoutContraints = NSLayoutConstraint.constraintsWithVisualFormat("V:|-[textField]", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: views)
        cell.contentView.addConstraints(verticallayoutContraints)
        cell.contentView.addConstraints(horizontallayoutContraints)
        
        return cell
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Header"
    }
    
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
}

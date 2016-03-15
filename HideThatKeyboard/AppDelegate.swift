import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    let navigation = UINavigationController()
    let home = UIViewController()
    let tableView = TableViewController()
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        let button = UIButton(frame: CGRect(x: 50, y: 100, width: 150, height: 50))
        button.setTitle("Open", forState: .Normal)
        button.setTitleColor(UIColor.blackColor(), forState: .Normal)
        button.addTarget(self, action: "open:", forControlEvents: .TouchUpInside)
        
        home.view.addSubview(button)
        navigation.pushViewController(home, animated: false)
        
        let mainWindow = UIWindow(frame: UIScreen.mainScreen().bounds)
        mainWindow.backgroundColor = UIColor.whiteColor()
        mainWindow.rootViewController = navigation
        mainWindow.makeKeyAndVisible()
        window = mainWindow
        
        return true
        
    }
    
    func open(obj: AnyObject) {
        navigation.pushViewController(tableView, animated: true)
    }
    
    
    
    func applicationWillResignActive(application: UIApplication) {}
    
    func applicationDidEnterBackground(application: UIApplication) {}
    
    func applicationWillEnterForeground(application: UIApplication) {}
    
    func applicationDidBecomeActive(application: UIApplication) {}
    
    func applicationWillTerminate(application: UIApplication) {}
    
    
}

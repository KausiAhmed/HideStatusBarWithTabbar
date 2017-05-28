import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        showTabBar()
        return true
    }

    func showTabBar() {
        let tabBarVC = TabBarVC()
        if let window = self.window {
            window.rootViewController = tabBarVC
        }
    }

}


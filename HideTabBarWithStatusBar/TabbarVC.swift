import UIKit

class TabBarVC: UIViewController, UITabBarControllerDelegate, UINavigationControllerDelegate {

    var mainTabBarController = UITabBarController()

    init() {
        super.init(nibName: nil, bundle: nil)
        self.mainTabBarController.delegate = self
        self.mainTabBarController.navigationController?.delegate = self
        self.mainTabBarController.selectedIndex = 0
        self.mainTabBarController.customizableViewControllers = []
        self.view.addSubview(self.mainTabBarController.view)
        self.mainTabBarController.setViewControllers(self.topLevelControllers(), animated: false)

    }

    required init?(coder aDecoder: NSCoder) {

        super.init(coder: aDecoder)
        fatalError("init(coder:) has not been implemented")
    }

    func topLevelControllers() -> Array <UIViewController> {

        let one = self.viewControllerFromStoryBoard(storyboardName: "One",
                                                      sceneName: "Initial",
                                                      iconName: "",
                                                      title: "Tab One")

        let two = self.viewControllerFromStoryBoard(storyboardName: "Two",
                                                          sceneName: "Initial",
                                                          iconName: "",
                                                          title: "Tab Two")

        let three = self.viewControllerFromStoryBoard(storyboardName: "Three",
                                                        sceneName: "Initial",
                                                        iconName: "",
                                                        title: "Tab hree")

        let four = self.viewControllerFromStoryBoard(storyboardName: "Four",
                                                          sceneName: "Initial",
                                                          iconName: "",
                                                          title: "Tab Four")

        let five = self.viewControllerFromStoryBoard(storyboardName: "Five",
                                                   sceneName: "Initial",
                                                   iconName: "",
                                                   title: "Tab Five")

        return [one, two, three, four, five]
    }

    final func viewControllerFromStoryBoard(storyboardName: String, sceneName: String, iconName: String, title: String?) -> UIViewController {
        let sb: UIStoryboard = UIStoryboard(name: storyboardName, bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: sceneName)
        if let icon = UIImage(named: iconName) {
            vc.tabBarItem = UITabBarItem(title: title, image: icon, selectedImage: nil)
            vc.title = title
        }
        return vc
    }
}

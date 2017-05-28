import UIKit

class ViewController: UIViewController {

    var statusBarShouldBeHidden = false

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override var prefersStatusBarHidden: Bool {
        return statusBarShouldBeHidden
    }

    override var preferredStatusBarUpdateAnimation: UIStatusBarAnimation {
        return .slide
    }

    @IBAction func buttonHideShowStatusBarTapped(_ sender: Any) {
        statusBarShouldBeHidden  = !statusBarShouldBeHidden

        UIView.animate(withDuration: 0.25) {
            self.setNeedsStatusBarAppearanceUpdate()
            print("animating")
        }
    }
}

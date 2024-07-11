import UIKit

final class HomeTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTabs()
    }
    
    
    private func setUpTabs() {
        let homeViewController = HomeViewController()
        
        let homeTab = UINavigationController(rootViewController: homeViewController)
        homeTab.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "person"), tag: 1)
        
        setViewControllers([homeTab], animated: true)
    }
}

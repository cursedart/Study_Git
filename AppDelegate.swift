import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        let numbers = [1, 2, 3, 4, 6, 8, 9]
        let target = 10
        if let pair = findPairWithSum(numbers: numbers, target: target) {
            print("Found pair: \(pair.0) + \(pair.1) = \(target)")
        } else {
            print("No pair found for target \(target)")
        }
        return true
    }

    func findPairWithSum(numbers: [Int], target: Int) -> (Int, Int)? {
        var left = 0
        var right = numbers.count - 1

        while left < right {
            let sum = numbers[left] + numbers[right]
            if sum == target {
                return (numbers[left], numbers[right])
            } else if sum < target {
                left += 1
            } else {
                right -= 1
            }
        }
        return nil
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
    }
}

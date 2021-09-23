//
//  Created by Łukasz Osiennik on 24/03/2020.
//  Copyright © 2020 open plainness (https://www.openplainness.com). All rights reserved.
//

final class AppNavigationNodeContentFactory {

    static func create(
        for navigationNodeType: AppNavigationNodeType
    ) -> AppNavigationNodeContentInterface {
        switch navigationNodeType {
        case .window(let params):
            return AppNavigationNodeContentWindow(
                window: params.window,
                showingType: params.showingType,
                rootViewController: params.rootChildNavigationNode.content.viewController
            )
        case .tabBarController(let params):
            return AppNavigationNodeContentTabBarController(
                showingType: params.showingType,
                viewControllers: params.rootChildNavigationNodes.map {
                    $0.content.viewController
                }
            )
        case .navigationController(let params):
            return AppNavigationNodeContentNavigationController(
                params: params
            )
        case .viewController(let params):
            return AppNavigationNodeContentViewController(
                params: params
            )
        }
    }
}

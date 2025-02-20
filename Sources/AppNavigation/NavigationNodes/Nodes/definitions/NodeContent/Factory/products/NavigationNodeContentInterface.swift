//
//  Created by Łukasz Osiennik on 24/03/2020.
//  Copyright © 2020 Łukasz Osiennik. All rights reserved.
//

import UIKit

protocol NavigationNodeContentInterface {
    
    var type: NavigationNodeContentType { get }
    
    var viewController: UIViewController { get }
    
    func display(
        on parentViewController: UIViewController
    )
    
    func hide()
}

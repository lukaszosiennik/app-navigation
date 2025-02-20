//
//  Created by Łukasz Osiennik on 10/04/2020.
//  Copyright © 2020 Łukasz Osiennik. All rights reserved.
//

import UIKit

final class AppWindow:
    CommonWindow {
    
    override init(
        windowID: UUWindowID
    ) {
        super.init(
            windowID: windowID
        )
        
        setup()
    }
    
    required init?(
        coder: NSCoder
    ) {
        fatalError(
            "init(coder:) has not been implemented"
        )
    }
    
    private func setup() {}
}

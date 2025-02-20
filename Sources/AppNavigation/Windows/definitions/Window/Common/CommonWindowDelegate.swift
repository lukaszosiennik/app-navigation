//
//  Created by Łukasz Osiennik on 16/04/2020.
//  Copyright © 2020 Łukasz Osiennik. All rights reserved.
//

public protocol CommonWindowDelegate:
    AnyObject {
    
    func switchWindowActionInvoked(
        on windowID: UUWindowID
    )
}

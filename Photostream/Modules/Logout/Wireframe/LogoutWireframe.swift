//
//  LogoutWireframe.swift
//  Photostream
//
//  Created by Mounir Ybanez on 15/12/2016.
//  Copyright © 2016 Mounir Ybanez. All rights reserved.
//

protocol LogoutWireframeInterface: BaseModuleWireframe { }

class LogoutWireframe: LogoutWireframeInterface {

    var root: RootWireframe?
    var style: WireframeStyle!
    
    required init(root: RootWireframe?) {
        self.root = root
    }
}

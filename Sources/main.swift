//
//  main.swift
//  SwiftServer
//
//  Created by Ilia Tikhomirov on 24/02/16.
//  Copyright © 2016 Ilia Tikhomirov. All rights reserved.
//

import Foundation
import Vapor

print("Swift Server is starting")

Route.get("hello") { _ in
    return["Hello": "World"]
}

Route.get("hello/:name"){ request in
    
    let name = request.parameters["name"]
    return ["Hello": name]
    
}

let server = Server()
server.run(port: 8080)

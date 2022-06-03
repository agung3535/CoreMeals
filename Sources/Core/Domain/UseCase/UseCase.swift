//
//  File.swift
//  
//
//  Created by Putra on 02/06/22.
//

import Foundation
import Combine

public protocol UseCase {
    associatedtype Request
    associatedtype Response
    
    func execute(request: Request) -> AnyPublisher<Response, Error>
}

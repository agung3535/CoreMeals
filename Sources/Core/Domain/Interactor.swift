//
//  File.swift
//  
//
//  Created by Putra on 02/06/22.
//

import Foundation
import Combine

public struct Interactor<Request, Response, R:Repository>: UseCase where R.Request == Request, R.Response == Response {
    private let repository: R
    
    public init(repository: R) {
        self.repository = repository
    }
    
    public func execute(request: Request?) -> AnyPublisher<Response, Error> {
        repository.execute(request: request)
    }
}

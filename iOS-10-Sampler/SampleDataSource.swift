//
//  SampleDataSource.swift
//  iOS-10-Sampler
//
//  Created by Shuichi Tsutsumi on 9/3/16.
//  Copyright © 2016 Shuichi Tsutsumi. All rights reserved.
//

import UIKit

struct Sample {
    let title: String
    let detail: String
    let classPrefix: String
    
    func controller() -> UIViewController {
        let storyboard = UIStoryboard(name: classPrefix, bundle: nil)
        guard let controller = storyboard.instantiateInitialViewController() else {fatalError()}
        controller.title = title
        return controller
    }
}

struct SampleDataSource {
    let samples = [
        Sample(
            title: "Foo",
            detail: "FooFooFooFooFooFooFooFooFooFooFooFoo",
            classPrefix: "Foo"
        ),
        Sample(
            title: "Bar",
            detail: "BarBarBarBarBarBarBarBarBarBarBarBarBarBarBarBarBarBarBarBarBarBarBarBarBarBar",
            classPrefix: "Bar"
        ),
        ]
}

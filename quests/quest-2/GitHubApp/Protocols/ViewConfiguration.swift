//
//  ViewConfiguration.swift
//  GitHubApp
//
//  Created by Diego Rodrigues on 01/09/22.
//

protocol ViewConfiguration {
    func configureSubviews()
    func configureSubviewsConstraints()
    func configureAdditionalBehaviors()
}

extension ViewConfiguration {
    public func configureView() {
        configureSubviews()
        configureSubviewsConstraints()
        configureAdditionalBehaviors()
    }
}

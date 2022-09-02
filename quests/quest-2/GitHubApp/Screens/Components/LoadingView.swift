//
//  LoadingView.swift
//  GitHubApp
//
//  Created by Diego Rodrigues on 01/09/22.
//

import UIKit

class LoadingView: UIView {
    
    private lazy var searchingLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        label.textAlignment = .center
        label.textColor = .label
        label.text = "Searching repositories..."
        return label
    }()
    
    private lazy var activityIndicator: UIActivityIndicatorView = {
        let activityIndicator = UIActivityIndicatorView(style: .large)
        activityIndicator.translatesAutoresizingMaskIntoConstraints = false
        activityIndicator.color = .label
        activityIndicator.startAnimating()
        return activityIndicator
    }()
    
    init() {
        super.init(frame: .zero)

        configureView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension LoadingView: ViewConfiguration {
    func configureSubviews() {
        addSubview(searchingLabel)
        addSubview(activityIndicator)
    }
    
    func configureSubviewsConstraints() {
        NSLayoutConstraint.activate([
            searchingLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            searchingLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8),
            searchingLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 8),
            
            activityIndicator.topAnchor.constraint(equalTo: searchingLabel.bottomAnchor, constant: 16),
            activityIndicator.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
    
    func configureAdditionalBehaviors() {
        translatesAutoresizingMaskIntoConstraints = false
    }
}

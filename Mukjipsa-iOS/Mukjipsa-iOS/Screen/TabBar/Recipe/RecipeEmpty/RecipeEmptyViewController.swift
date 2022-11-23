//
//  RecipeEmptyViewController.swift
//  Mukjipsa-iOS
//
//  Created by 황찬미 on 2022/11/22.
//

import UIKit

import SnapKit
import Then

final class RecipeEmptyViewController: BaseViewController {
    
    // MARK: - UI Property
    var mainNaviView = RecipeNaviView(frame: .zero, mode: .mainRecipe)
    var recipeEmptyView = EmptyView()
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setLayout()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        setLayout()
    }
    
    // MARK: - @objc
    
    private func setLayout() {
        recipeEmptyView.emptyMode = .bookmarkEmpty
        
        view.addSubviews([mainNaviView, recipeEmptyView])
        
        mainNaviView.snp.makeConstraints {
            $0.top.leading.trailing.equalTo(view.safeAreaLayoutGuide)
            $0.height.equalTo(44)
        }

        recipeEmptyView.snp.makeConstraints {
            $0.top.equalTo(mainNaviView.snp.bottom)
            $0.leading.trailing.bottom.equalToSuperview()
        }
    }
    
    // MARK: - Custom Method
}

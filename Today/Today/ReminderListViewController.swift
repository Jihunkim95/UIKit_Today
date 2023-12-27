//
//  ViewController.swift
//  Today
//
//  Created by 김지훈 on 2023/12/27.
//

import UIKit
//
//class ReminderListViewController: UICollectionViewController{
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//    }
//
//    //그룹화된 모양으로 새 목록 구성 변수를 생성하는 이름의 새 함수 생성
//    private func listLayout() -> UICollectionViewCompositionalLayout {
//        var listConfiguration = UICollectionLayoutListConfiguration(appearance: .grouped)
////        UICollectionLayoutListConfiguration(appearance: .grouped)
//    }
//    
//}

class ReminderListViewController: UICollectionViewController {
    typealias DataSource = UICollectionViewDiffableDataSource<Int, String>

    //스냅샷 적용
    typealias Snapshot = NSDiffableDataSourceSnapshot<Int, String>

    var dataSource: DataSource!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let listLayout = listLayout()
        collectionView.collectionViewLayout = listLayout
        
        // 데이터 원본 구성
        let cellRegistration = UICollectionView.CellRegistration<UICollectionViewListCell, String> {
            (cell, indexPath, itemIdentifier) in
            var content = cell.defaultContentConfiguration()
            content.text = itemIdentifier // 또는 reminder.title
            cell.contentConfiguration = content
        }
        
//        dataSource = DataSource(collectionView: collectionView) {
//            (collectionView: UICollectionView, indexPath: IndexPath, itemIdentifier: String) in
//            return collectionView.dequeueConfiguredReusableCell(
//                using: cellRegistration, for: indexPath, item: itemIdentifier)
//        }
//        
        
//        var snapshot = Snapshot()
//        snapshot.appendSections([0])
//        snapshot.appendItems(Reminder.sampleData.map { $0.title })
//        dataSource.apply(snapshot)


//        collectionView.dataSource = dataSource
        
    }

    //그룹화된 모양으로 새 목록 구성 변수를 생성하는 이름의 새 함수 생성
    //group, item, section
    private func listLayout() -> UICollectionViewCompositionalLayout {
        var listConfiguration = UICollectionLayoutListConfiguration(appearance: .grouped)
        listConfiguration.showsSeparators = false
        listConfiguration.backgroundColor = .clear
        return UICollectionViewCompositionalLayout.list(using: listConfiguration)
    }
}


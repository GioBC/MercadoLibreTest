//
//  TestsSearchViewController.swift
//  MercadoLibreTestTests
//
//  Created by Yermis Beltran on 30/08/21.
//

import XCTest
@testable import MercadoLibreTest

class TestsSearchViewController: XCTestCase {

    var SUT: SearchViewController?

    override func setUpWithError() throws {
        let vm = SearchViewModel(repository: FakeMLSearchRepository())
        SUT = SearchViewController(viewModel: vm)
    }

    override func tearDownWithError() throws {
    }
    
    func test_initial_Load() {
        SUT?.loadViewIfNeeded()
        SUT?.viewDidLoad()
        SUT?.viewModel.search(by: "demo")
        let tableView = SUT?.tableView
        let indexPath1 = IndexPath(row: 0, section: 0)
        let cell1 = tableView?.dataSource?.tableView(tableView!, cellForRowAt: indexPath1)
        XCTAssertNotNil(cell1 as? SearchTableViewCell)
    }
}

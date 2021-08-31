//
//  TestsDetailViewController.swift
//  MercadoLibreTestTests
//
//  Created by Yermis Beltran on 30/08/21.
//

import XCTest
@testable import MercadoLibreTest

class TestsDetailViewController: XCTestCase {

    var SUT: DetailViewController?

    override func setUpWithError() throws {
        SUT = DetailViewController(nibName: "DetailViewController", bundle: nil)
        var result = Result()
        result.price = 10000.0
        result.title = "Archivo"
        SUT?.viewModel = ProductViewModel(product: result, repository: FakeMLSearchRepository())
    }

    override func tearDownWithError() throws {
    }
    
    func test_Inital_Loading() {
        SUT?.loadViewIfNeeded()
        SUT?.viewDidLoad()
        let tableView = SUT?.tableView
        let indexPath1 = IndexPath(row: 0, section: 0)
        let cell1 = tableView?.dataSource?.tableView(tableView!, cellForRowAt: indexPath1)
        XCTAssertNotNil(cell1 as? HeaderImagesTableViewCell)
        
        let indexPath2 = IndexPath(row: 1, section: 0)
        let cell2 = tableView?.dataSource?.tableView(tableView!, cellForRowAt: indexPath2)
        XCTAssertNotNil(cell2 as? PriceDetailTableViewCell)
        
        let indexPath3 = IndexPath(row: 2, section: 0)
        let cell3 = tableView?.dataSource?.tableView(tableView!, cellForRowAt: indexPath3)
        XCTAssertNotNil(cell3 as? DescriptionTableViewCell)
    }
}

//
//  GeniusesTableViewControllerTests.swift
//  VCTDD
//
//  Created by Jorge D. Ortiz Fuentes on 11/1/17.
//    Copyright © 2017 Canonical Examples. All rights reserved.
//


import XCTest
@testable import VCTDD


class GeniusesTableViewControllerTests: XCTestCase {

    // MARK: - Parameters & Constants.

    let storyboardName = "Main"
    let numberOfGeniuses = 7


    // MARK: - Test vatiables.

    var sut: GeniusesTableViewController!
    var presenter: GeniusesListPresenterMock!


    // MARK: - Set up and tear down.

    override func setUp() {
        super.setUp()
        createSut()
    }

    func createSut() {
        let storyboard = UIStoryboard(name: storyboardName, bundle: nil)
        sut = storyboard.instantiateViewController(withIdentifier: GeniusesTableViewController.ID) as! GeniusesTableViewController
        presenter = GeniusesListPresenterMock()
    }


    override func tearDown() {
        releaseSut()

        super.tearDown()
    }

    func releaseSut() {
        sut = nil
        presenter = nil
    }


    // MARK: - Basic test.

    func testSutIsntNil() {
        XCTAssertNotNil(sut, "Sut must not be nil.")
    }

    func testViewDidLoadInvokesViewReadyEvent() {
        // Arrange
        sut.presenter = presenter

        // Act
        _ = sut.view

        // Assert
        XCTAssertTrue(presenter.isViewReadyInvoked)
    }
    
    func testPresenterProvidesNumberOfRowsInSection() {
        // Arrange
        presenter.totalGeniuses = numberOfGeniuses
        sut.presenter = presenter

        // Act
        let rows = sut.tableView(sut.tableView, numberOfRowsInSection: 0)

        // Assert
        XCTAssertEqual(numberOfGeniuses, rows)
    }
    

    // MARK: - Stubs & Mocks.

    class GeniusesListPresenterMock: GeniusesListPresenter {
        var isViewReadyInvoked = false
        var totalGeniuses: Int?

        override func viewReady() {
            isViewReadyInvoked = true
        }
    }
}

import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Presence_InfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Presence_Info() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Presence_Info.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertEqual(cstruct.Status, .init(rawValue: .zero)!)
            XCTAssertNil(cstruct.UserId)
            XCTAssertNil(cstruct.ProductId)
            XCTAssertNil(cstruct.ProductVersion)
            XCTAssertNil(cstruct.Platform)
            XCTAssertNil(cstruct.RichText)
            XCTAssertEqual(cstruct.RecordsCount, .zero)
            XCTAssertNil(cstruct.Records)
            XCTAssertNil(cstruct.ProductName)
            let swiftObject = try SwiftEOS_Presence_Info(sdkObject: cstruct) }
    }
}

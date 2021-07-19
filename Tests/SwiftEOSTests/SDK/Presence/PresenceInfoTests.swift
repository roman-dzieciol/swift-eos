import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Presence_InfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Presence_Info() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Presence_Info.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_PRESENCE_INFO_API_LATEST)
            XCTAssertEqual(cstruct.Status, .zero)
            XCTAssertNil(cstruct.UserId)
            XCTAssertNil(cstruct.ProductId)
            XCTAssertNil(cstruct.ProductVersion)
            XCTAssertNil(cstruct.Platform)
            XCTAssertNil(cstruct.RichText)
            XCTAssertEqual(cstruct.RecordsCount, .zero)
            XCTAssertNil(cstruct.Records)
            XCTAssertNil(cstruct.ProductName)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Presence_Info(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_PRESENCE_INFO_API_LATEST)
            XCTAssertEqual(swiftObject.Status, .zero)
            XCTAssertNil(swiftObject.UserId)
            XCTAssertNil(swiftObject.ProductId)
            XCTAssertNil(swiftObject.ProductVersion)
            XCTAssertNil(swiftObject.Platform)
            XCTAssertNil(swiftObject.RichText)
            XCTAssertNil(swiftObject.Records)
            XCTAssertNil(swiftObject.ProductName) }
    }
}

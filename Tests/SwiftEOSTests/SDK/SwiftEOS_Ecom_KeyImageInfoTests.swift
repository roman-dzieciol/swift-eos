import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Ecom_KeyImageInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Ecom_KeyImageInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Ecom_KeyImageInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.Type)
            XCTAssertNil(cstruct.Url)
            XCTAssertEqual(cstruct.Width, .zero)
            XCTAssertEqual(cstruct.Height, .zero)
            let swiftObject = try SwiftEOS_Ecom_KeyImageInfo(sdkObject: cstruct) }
    }
}

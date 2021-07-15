import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_PlayerDataStorage_QueryFileOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_PlayerDataStorage_QueryFileOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_PlayerDataStorage_QueryFileOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.Filename)
            let swiftObject = try SwiftEOS_PlayerDataStorage_QueryFileOptions(sdkObject: cstruct) }
    }
}

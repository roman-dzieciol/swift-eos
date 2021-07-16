import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_SessionSearch_FindOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_SessionSearch_FindOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_SessionSearch_FindOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_SessionSearch_FindOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.LocalUserId) }
    }
}

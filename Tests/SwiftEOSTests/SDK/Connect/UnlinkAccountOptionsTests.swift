import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Connect_UnlinkAccountOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Connect_UnlinkAccountOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Connect_UnlinkAccountOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Connect_UnlinkAccountOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.LocalUserId) }
    }
}

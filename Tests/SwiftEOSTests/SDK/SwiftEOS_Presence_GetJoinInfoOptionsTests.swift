import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Presence_GetJoinInfoOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Presence_GetJoinInfoOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Presence_GetJoinInfoOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.TargetUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Presence_GetJoinInfoOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.TargetUserId) }
    }
}

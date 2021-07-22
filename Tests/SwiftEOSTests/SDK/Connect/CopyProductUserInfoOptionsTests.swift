import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Connect_CopyProductUserInfoOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Connect_CopyProductUserInfoOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Connect_CopyProductUserInfoOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.TargetUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Connect_CopyProductUserInfoOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.TargetUserId) }
    }
}

import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Connect_GetProductUserExternalAccountCountOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Connect_GetProductUserExternalAccountCountOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Connect_GetProductUserExternalAccountCountOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.TargetUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Connect_GetProductUserExternalAccountCountOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.TargetUserId) }
    }
}

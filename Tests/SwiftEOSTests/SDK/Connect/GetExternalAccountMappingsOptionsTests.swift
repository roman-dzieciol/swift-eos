import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Connect_GetExternalAccountMappingsOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Connect_GetExternalAccountMappingsOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Connect_GetExternalAccountMappingsOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertEqual(cstruct.AccountIdType, .zero)
            XCTAssertNil(cstruct.TargetExternalUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Connect_GetExternalAccountMappingsOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertEqual(swiftObject.AccountIdType, .zero)
            XCTAssertNil(swiftObject.TargetExternalUserId) }
    }
}

import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Connect_CopyProductUserExternalAccountByAccountTypeOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Connect_CopyProductUserExternalAccountByAccountTypeOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Connect_CopyProductUserExternalAccountByAccountTypeOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.TargetUserId)
            XCTAssertEqual(cstruct.AccountIdType, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Connect_CopyProductUserExternalAccountByAccountTypeOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.TargetUserId)
            XCTAssertEqual(swiftObject.AccountIdType, .zero) }
    }
}

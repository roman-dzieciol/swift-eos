import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Connect_CopyProductUserExternalAccountByAccountIdOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Connect_CopyProductUserExternalAccountByAccountIdOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Connect_CopyProductUserExternalAccountByAccountIdOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.TargetUserId)
            XCTAssertNil(cstruct.AccountId)
            let swiftObject = try SwiftEOS_Connect_CopyProductUserExternalAccountByAccountIdOptions(sdkObject: cstruct) }
    }
}

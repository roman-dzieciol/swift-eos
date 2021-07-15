import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Connect_CopyProductUserExternalAccountByIndexOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Connect_CopyProductUserExternalAccountByIndexOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Connect_CopyProductUserExternalAccountByIndexOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.TargetUserId)
            XCTAssertEqual(cstruct.ExternalAccountInfoIndex, .zero)
            let swiftObject = try SwiftEOS_Connect_CopyProductUserExternalAccountByIndexOptions(sdkObject: cstruct) }
    }
}

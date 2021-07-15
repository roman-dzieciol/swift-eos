import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Auth_AccountFeatureRestrictedInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Auth_AccountFeatureRestrictedInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Auth_AccountFeatureRestrictedInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.VerificationURI)
            let swiftObject = try SwiftEOS_Auth_AccountFeatureRestrictedInfo(sdkObject: cstruct) }
    }
}

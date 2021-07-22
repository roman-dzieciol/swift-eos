import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Auth_AccountFeatureRestrictedInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Auth_AccountFeatureRestrictedInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Auth_AccountFeatureRestrictedInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.VerificationURI)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Auth_AccountFeatureRestrictedInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.VerificationURI) }
    }
}

import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Auth_DeletePersistentAuthOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Auth_DeletePersistentAuthOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Auth_DeletePersistentAuthOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.RefreshToken)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Auth_DeletePersistentAuthOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.RefreshToken) }
    }
}

import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Auth_DeletePersistentAuthOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Auth_DeletePersistentAuthOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Auth_DeletePersistentAuthOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.RefreshToken)
            let swiftObject = try SwiftEOS_Auth_DeletePersistentAuthOptions(sdkObject: cstruct) }
    }
}

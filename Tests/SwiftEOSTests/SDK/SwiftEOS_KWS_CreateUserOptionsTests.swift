import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_KWS_CreateUserOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_KWS_CreateUserOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_KWS_CreateUserOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.DateOfBirth)
            XCTAssertNil(cstruct.ParentEmail)
            let swiftObject = try SwiftEOS_KWS_CreateUserOptions(sdkObject: cstruct) }
    }
}

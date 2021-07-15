import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Auth_CopyUserAuthTokenOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Auth_CopyUserAuthTokenOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Auth_CopyUserAuthTokenOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            let swiftObject = try SwiftEOS_Auth_CopyUserAuthTokenOptions(sdkObject: cstruct) }
    }
}

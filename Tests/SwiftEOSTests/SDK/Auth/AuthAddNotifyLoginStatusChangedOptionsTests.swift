import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Auth_AddNotifyLoginStatusChangedOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Auth_AddNotifyLoginStatusChangedOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Auth_AddNotifyLoginStatusChangedOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Auth_AddNotifyLoginStatusChangedOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero) }
    }
}

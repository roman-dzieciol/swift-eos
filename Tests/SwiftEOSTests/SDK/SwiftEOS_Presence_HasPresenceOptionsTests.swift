import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Presence_HasPresenceOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Presence_HasPresenceOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Presence_HasPresenceOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.TargetUserId)
            let swiftObject = try SwiftEOS_Presence_HasPresenceOptions(sdkObject: cstruct) }
    }
}

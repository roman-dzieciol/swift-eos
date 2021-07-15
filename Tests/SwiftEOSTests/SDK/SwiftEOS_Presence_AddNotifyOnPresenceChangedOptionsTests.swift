import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Presence_AddNotifyOnPresenceChangedOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Presence_AddNotifyOnPresenceChangedOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Presence_AddNotifyOnPresenceChangedOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            let swiftObject = try SwiftEOS_Presence_AddNotifyOnPresenceChangedOptions(sdkObject: cstruct) }
    }
}

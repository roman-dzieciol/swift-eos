import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Presence_CreatePresenceModificationOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Presence_CreatePresenceModificationOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Presence_CreatePresenceModificationOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Presence_CreatePresenceModificationOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.LocalUserId) }
    }
}

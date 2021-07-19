import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Presence_QueryPresenceOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Presence_QueryPresenceOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Presence_QueryPresenceOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_PRESENCE_QUERYPRESENCE_API_LATEST)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.TargetUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Presence_QueryPresenceOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_PRESENCE_QUERYPRESENCE_API_LATEST)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.TargetUserId) }
    }
}

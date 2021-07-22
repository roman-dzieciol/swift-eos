import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_PresenceModification_SetStatusOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_PresenceModification_SetStatusOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_PresenceModification_SetStatusOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertEqual(cstruct.Status, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_PresenceModification_SetStatusOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertEqual(swiftObject.Status, .zero) }
    }
}

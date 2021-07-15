import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_PresenceModification_SetStatusOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_PresenceModification_SetStatusOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_PresenceModification_SetStatusOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertEqual(cstruct.Status, .init(rawValue: .zero)!)
            let swiftObject = try SwiftEOS_PresenceModification_SetStatusOptions(sdkObject: cstruct) }
    }
}

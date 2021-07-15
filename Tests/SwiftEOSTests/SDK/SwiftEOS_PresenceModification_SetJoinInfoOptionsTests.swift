import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_PresenceModification_SetJoinInfoOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_PresenceModification_SetJoinInfoOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_PresenceModification_SetJoinInfoOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.JoinInfo)
            let swiftObject = try SwiftEOS_PresenceModification_SetJoinInfoOptions(sdkObject: cstruct) }
    }
}

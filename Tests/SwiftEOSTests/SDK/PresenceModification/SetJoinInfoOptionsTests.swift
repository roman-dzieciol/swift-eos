import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_PresenceModification_SetJoinInfoOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_PresenceModification_SetJoinInfoOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_PresenceModification_SetJoinInfoOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_PRESENCEMODIFICATION_SETJOININFO_API_LATEST)
            XCTAssertNil(cstruct.JoinInfo)
            let swiftObject = try XCTUnwrap(try SwiftEOS_PresenceModification_SetJoinInfoOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_PRESENCEMODIFICATION_SETJOININFO_API_LATEST)
            XCTAssertNil(swiftObject.JoinInfo) }
    }
}

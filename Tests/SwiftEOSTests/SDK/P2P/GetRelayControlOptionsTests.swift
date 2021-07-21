import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_P2P_GetRelayControlOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_P2P_GetRelayControlOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_P2P_GetRelayControlOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_P2P_GetRelayControlOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero) }
    }
}

import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_P2P_SetRelayControlOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_P2P_SetRelayControlOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_P2P_SetRelayControlOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertEqual(cstruct.RelayControl, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_P2P_SetRelayControlOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertEqual(swiftObject.RelayControl, .zero) }
    }
}

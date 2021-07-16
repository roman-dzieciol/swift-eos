import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_P2P_SetRelayControlOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_P2P_SetRelayControlOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_P2P_SetRelayControlOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertEqual(cstruct.RelayControl, .init(rawValue: .zero)!)
            let swiftObject = try XCTUnwrap(try SwiftEOS_P2P_SetRelayControlOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertEqual(swiftObject.RelayControl, .init(rawValue: .zero)!) }
    }
}

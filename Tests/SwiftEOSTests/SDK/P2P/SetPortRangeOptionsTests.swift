import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_P2P_SetPortRangeOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_P2P_SetPortRangeOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_P2P_SetPortRangeOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertEqual(cstruct.Port, .zero)
            XCTAssertEqual(cstruct.MaxAdditionalPortsToTry, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_P2P_SetPortRangeOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertEqual(swiftObject.Port, .zero)
            XCTAssertEqual(swiftObject.MaxAdditionalPortsToTry, .zero) }
    }
}

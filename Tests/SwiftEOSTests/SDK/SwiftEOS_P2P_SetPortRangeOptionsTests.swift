import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_P2P_SetPortRangeOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_P2P_SetPortRangeOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_P2P_SetPortRangeOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertEqual(cstruct.Port, .zero)
            XCTAssertEqual(cstruct.MaxAdditionalPortsToTry, .zero)
            let swiftObject = try SwiftEOS_P2P_SetPortRangeOptions(sdkObject: cstruct) }
    }
}

import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_P2P_GetPortRangeOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_P2P_GetPortRangeOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_P2P_GetPortRangeOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            let swiftObject = try SwiftEOS_P2P_GetPortRangeOptions(sdkObject: cstruct) }
    }
}

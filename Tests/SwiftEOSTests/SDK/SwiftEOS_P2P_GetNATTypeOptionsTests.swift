import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_P2P_GetNATTypeOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_P2P_GetNATTypeOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_P2P_GetNATTypeOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            let swiftObject = try SwiftEOS_P2P_GetNATTypeOptions(sdkObject: cstruct) }
    }
}

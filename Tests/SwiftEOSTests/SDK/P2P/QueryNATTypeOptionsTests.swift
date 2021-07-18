import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_P2P_QueryNATTypeOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_P2P_QueryNATTypeOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_P2P_QueryNATTypeOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_P2P_QueryNATTypeOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero) }
    }
}

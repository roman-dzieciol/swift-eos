import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Connect_LinkAccountOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Connect_LinkAccountOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Connect_LinkAccountOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.ContinuanceToken)
            let swiftObject = try SwiftEOS_Connect_LinkAccountOptions(sdkObject: cstruct) }
    }
}

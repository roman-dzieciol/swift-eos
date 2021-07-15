import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Connect_CreateUserOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Connect_CreateUserOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Connect_CreateUserOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.ContinuanceToken)
            let swiftObject = try SwiftEOS_Connect_CreateUserOptions(sdkObject: cstruct) }
    }
}

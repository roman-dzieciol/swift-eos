import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Connect_AddNotifyLoginStatusChangedOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Connect_AddNotifyLoginStatusChangedOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Connect_AddNotifyLoginStatusChangedOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            let swiftObject = try SwiftEOS_Connect_AddNotifyLoginStatusChangedOptions(sdkObject: cstruct) }
    }
}

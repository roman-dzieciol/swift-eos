import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Sessions_SendInviteCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Sessions_SendInviteCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Sessions_SendInviteCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .init(rawValue: .zero)!)
            XCTAssertNil(cstruct.ClientData)
            let swiftObject = try SwiftEOS_Sessions_SendInviteCallbackInfo(sdkObject: cstruct) }
    }
}

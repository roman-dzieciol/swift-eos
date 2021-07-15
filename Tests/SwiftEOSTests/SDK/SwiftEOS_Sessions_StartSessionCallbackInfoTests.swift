import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Sessions_StartSessionCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Sessions_StartSessionCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Sessions_StartSessionCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .init(rawValue: .zero)!)
            XCTAssertNil(cstruct.ClientData)
            let swiftObject = try SwiftEOS_Sessions_StartSessionCallbackInfo(sdkObject: cstruct) }
    }
}

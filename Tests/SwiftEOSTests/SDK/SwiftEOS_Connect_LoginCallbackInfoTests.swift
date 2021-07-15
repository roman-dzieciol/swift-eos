import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Connect_LoginCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Connect_LoginCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Connect_LoginCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .init(rawValue: .zero)!)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.ContinuanceToken)
            let swiftObject = try SwiftEOS_Connect_LoginCallbackInfo(sdkObject: cstruct) }
    }
}

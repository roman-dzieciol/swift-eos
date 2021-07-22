import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_RTCAdmin_KickCompleteCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_RTCAdmin_KickCompleteCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_RTCAdmin_KickCompleteCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .zero)
            XCTAssertNil(cstruct.ClientData)
            let swiftObject = try XCTUnwrap(try SwiftEOS_RTCAdmin_KickCompleteCallbackInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ResultCode, .zero) }
    }
}

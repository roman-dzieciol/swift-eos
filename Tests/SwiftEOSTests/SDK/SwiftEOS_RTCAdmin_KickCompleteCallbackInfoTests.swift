import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_RTCAdmin_KickCompleteCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_RTCAdmin_KickCompleteCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_RTCAdmin_KickCompleteCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .init(rawValue: .zero)!)
            XCTAssertNil(cstruct.ClientData)
            let swiftObject = try SwiftEOS_RTCAdmin_KickCompleteCallbackInfo(sdkObject: cstruct) }
    }
}

import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_RTCAdmin_SetParticipantHardMuteCompleteCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_RTCAdmin_SetParticipantHardMuteCompleteCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_RTCAdmin_SetParticipantHardMuteCompleteCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .init(rawValue: .zero)!)
            XCTAssertNil(cstruct.ClientData)
            let swiftObject = try SwiftEOS_RTCAdmin_SetParticipantHardMuteCompleteCallbackInfo(sdkObject: cstruct) }
    }
}

import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_KWS_QueryAgeGateCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_KWS_QueryAgeGateCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_KWS_QueryAgeGateCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .init(rawValue: .zero)!)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.CountryCode)
            XCTAssertEqual(cstruct.AgeOfConsent, .zero)
            let swiftObject = try SwiftEOS_KWS_QueryAgeGateCallbackInfo(sdkObject: cstruct) }
    }
}

import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Stats_IngestStatCompleteCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Stats_IngestStatCompleteCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Stats_IngestStatCompleteCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .init(rawValue: .zero)!)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.TargetUserId)
            let swiftObject = try SwiftEOS_Stats_IngestStatCompleteCallbackInfo(sdkObject: cstruct) }
    }
}

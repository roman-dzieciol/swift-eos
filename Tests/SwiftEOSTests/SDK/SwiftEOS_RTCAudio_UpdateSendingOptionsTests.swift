import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_RTCAudio_UpdateSendingOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_RTCAudio_UpdateSendingOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_RTCAudio_UpdateSendingOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.RoomName)
            XCTAssertEqual(cstruct.AudioStatus, .init(rawValue: .zero)!)
            let swiftObject = try SwiftEOS_RTCAudio_UpdateSendingOptions(sdkObject: cstruct) }
    }
}

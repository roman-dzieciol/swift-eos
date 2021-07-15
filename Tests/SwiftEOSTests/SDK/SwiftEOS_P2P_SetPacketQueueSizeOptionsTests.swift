import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_P2P_SetPacketQueueSizeOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_P2P_SetPacketQueueSizeOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_P2P_SetPacketQueueSizeOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertEqual(cstruct.IncomingPacketQueueMaxSizeBytes, .zero)
            XCTAssertEqual(cstruct.OutgoingPacketQueueMaxSizeBytes, .zero)
            let swiftObject = try SwiftEOS_P2P_SetPacketQueueSizeOptions(sdkObject: cstruct) }
    }
}

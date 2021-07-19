import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_P2P_SetPacketQueueSizeOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_P2P_SetPacketQueueSizeOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_P2P_SetPacketQueueSizeOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_P2P_SETPACKETQUEUESIZE_API_LATEST)
            XCTAssertEqual(cstruct.IncomingPacketQueueMaxSizeBytes, .zero)
            XCTAssertEqual(cstruct.OutgoingPacketQueueMaxSizeBytes, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_P2P_SetPacketQueueSizeOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_P2P_SETPACKETQUEUESIZE_API_LATEST)
            XCTAssertEqual(swiftObject.IncomingPacketQueueMaxSizeBytes, .zero)
            XCTAssertEqual(swiftObject.OutgoingPacketQueueMaxSizeBytes, .zero) }
    }
}

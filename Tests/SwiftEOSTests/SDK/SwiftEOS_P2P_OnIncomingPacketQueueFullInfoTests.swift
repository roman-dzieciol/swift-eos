import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_P2P_OnIncomingPacketQueueFullInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_P2P_OnIncomingPacketQueueFullInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_P2P_OnIncomingPacketQueueFullInfo.self) { cstruct in
            XCTAssertNil(cstruct.ClientData)
            XCTAssertEqual(cstruct.PacketQueueMaxSizeBytes, .zero)
            XCTAssertEqual(cstruct.PacketQueueCurrentSizeBytes, .zero)
            XCTAssertNil(cstruct.OverflowPacketLocalUserId)
            XCTAssertEqual(cstruct.OverflowPacketChannel, .zero)
            XCTAssertEqual(cstruct.OverflowPacketSizeBytes, .zero)
            let swiftObject = try SwiftEOS_P2P_OnIncomingPacketQueueFullInfo(sdkObject: cstruct) }
    }
}

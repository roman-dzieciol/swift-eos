import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_P2P_SendPacketOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_P2P_SendPacketOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_P2P_SendPacketOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.RemoteUserId)
            XCTAssertNil(cstruct.SocketId)
            XCTAssertEqual(cstruct.Channel, .zero)
            XCTAssertEqual(cstruct.DataLengthBytes, .zero)
            XCTAssertNil(cstruct.Data)
            XCTAssertEqual(cstruct.bAllowDelayedDelivery, .zero)
            XCTAssertEqual(cstruct.Reliability, .init(rawValue: .zero)!)
            let swiftObject = try SwiftEOS_P2P_SendPacketOptions(sdkObject: cstruct) }
    }
}

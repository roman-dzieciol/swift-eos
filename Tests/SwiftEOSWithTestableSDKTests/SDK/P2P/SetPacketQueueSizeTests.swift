import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_P2P_SetPacketQueueSizeTests: XCTestCase {
    public func testEOS_P2P_SetPacketQueueSize_Null() throws {
        TestGlobals.reset()
        __on_EOS_P2P_SetPacketQueueSize = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertEqual(Options!.pointee.IncomingPacketQueueMaxSizeBytes, .zero)
            XCTAssertEqual(Options!.pointee.OutgoingPacketQueueMaxSizeBytes, .zero)
            TestGlobals.sdkReceived.append("EOS_P2P_SetPacketQueueSize")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_P2P_Actor = SwiftEOS_P2P_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.SetPacketQueueSize(
            IncomingPacketQueueMaxSizeBytes: .zero,
            OutgoingPacketQueueMaxSizeBytes: .zero
        )
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_P2P_SetPacketQueueSize"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}

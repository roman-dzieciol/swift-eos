import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_P2P_GetPacketQueueInfoTests: XCTestCase {
    public func testEOS_P2P_GetPacketQueueInfo_Null() throws {
        TestGlobals.reset()
        __on_EOS_P2P_GetPacketQueueInfo = { Handle, Options, OutPacketQueueInfo in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(OutPacketQueueInfo)
            TestGlobals.sdkReceived.append("EOS_P2P_GetPacketQueueInfo")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_P2P_Actor = SwiftEOS_P2P_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: _tagEOS_P2P_PacketQueueInfo? = try object.GetPacketQueueInfo()
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_P2P_GetPacketQueueInfo"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}

import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_P2P_GetNextReceivedPacketSizeTests: XCTestCase {
    public func testEOS_P2P_GetNextReceivedPacketSize_Null() throws {
        TestGlobals.reset()
        __on_EOS_P2P_GetNextReceivedPacketSize = { Handle, Options, OutPacketSizeBytes in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertNil(Options!.pointee.RequestedChannel)
            XCTAssertNil(OutPacketSizeBytes)
            TestGlobals.sdkReceived.append("EOS_P2P_GetNextReceivedPacketSize")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_P2P_Actor = SwiftEOS_P2P_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: Int? = try object.GetNextReceivedPacketSize(
            LocalUserId: nil,
            RequestedChannel: nil
        )
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_P2P_GetNextReceivedPacketSize"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}

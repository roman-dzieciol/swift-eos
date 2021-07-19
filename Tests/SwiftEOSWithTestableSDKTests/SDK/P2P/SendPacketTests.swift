import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_P2P_SendPacketTests: XCTestCase {
    public func testEOS_P2P_SendPacket_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_P2P_SendPacket = { Handle, Options in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_P2P_SENDPACKET_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.RemoteUserId)
                XCTAssertNil(Options!.pointee.SocketId)
                XCTAssertEqual(Options!.pointee.Channel, .zero)
                XCTAssertEqual(Options!.pointee.DataLengthBytes, .zero)
                XCTAssertNil(Options!.pointee.Data)
                XCTAssertEqual(Options!.pointee.bAllowDelayedDelivery, .zero)
                XCTAssertEqual(Options!.pointee.Reliability, .zero)
                TestGlobals.current.sdkReceived.append("EOS_P2P_SendPacket")
                return .zero
            }
            defer { __on_EOS_P2P_SendPacket = nil }
            
            // Given Actor
            let object: SwiftEOS_P2P_Actor = SwiftEOS_P2P_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            try object.SendPacket(
                LocalUserId: nil,
                RemoteUserId: nil,
                SocketId: nil,
                Channel: .zero,
                Data: nil,
                bAllowDelayedDelivery: false,
                Reliability: .zero
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_P2P_SendPacket"])
        }
    }
}

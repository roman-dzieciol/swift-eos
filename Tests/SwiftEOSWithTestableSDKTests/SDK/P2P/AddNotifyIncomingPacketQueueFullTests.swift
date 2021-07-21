import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_P2P_AddNotifyIncomingPacketQueueFullTests: XCTestCase {
    public func testEOS_P2P_AddNotifyIncomingPacketQueueFull_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            let waitForIncomingPacketQueueFullHandler = expectation(description: "waitForIncomingPacketQueueFullHandler")
            
            // Given implementation for SDK function
            __on_EOS_P2P_AddNotifyIncomingPacketQueueFull = { Handle, Options, ClientData, IncomingPacketQueueFullHandler in
                GTest.current.sdkReceived.append("EOS_P2P_AddNotifyIncomingPacketQueueFull")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_P2P_ADDNOTIFYINCOMINGPACKETQUEUEFULL_API_LATEST)
                XCTAssertNotNil(ClientData)
                IncomingPacketQueueFullHandler?(GTest.current.pointer(object: _tagEOS_P2P_OnIncomingPacketQueueFullInfo(
                            ClientData: ClientData,
                            PacketQueueMaxSizeBytes: .zero,
                            PacketQueueCurrentSizeBytes: .zero,
                            OverflowPacketLocalUserId: nil,
                            OverflowPacketChannel: .zero,
                            OverflowPacketSizeBytes: .zero
                        )))
                return .zero
            }
            defer { __on_EOS_P2P_AddNotifyIncomingPacketQueueFull = nil }
            
            // Given Actor
            let object: SwiftEOS_P2P_Actor = SwiftEOS_P2P_Actor(Handle: nil)
            
            // When SDK function is called
            let result: SwiftEOS_Notification<SwiftEOS_P2P_OnIncomingPacketQueueFullInfo> = try object.AddNotifyIncomingPacketQueueFull(IncomingPacketQueueFullHandler: { arg0 in
                    XCTAssertEqual(arg0.PacketQueueMaxSizeBytes, .zero)
                    XCTAssertEqual(arg0.PacketQueueCurrentSizeBytes, .zero)
                    XCTAssertNil(arg0.OverflowPacketLocalUserId)
                    XCTAssertEqual(arg0.OverflowPacketChannel, .zero)
                    XCTAssertEqual(arg0.OverflowPacketSizeBytes, .zero)
                    waitForIncomingPacketQueueFullHandler.fulfill()
                })
            
            // Then
            withExtendedLifetime(result) { result in
                wait(for: [waitForIncomingPacketQueueFullHandler], timeout: 0.5)
                XCTAssertEqual(GTest.current.sdkReceived, ["EOS_P2P_AddNotifyIncomingPacketQueueFull"])
                
                // Given implementation for SDK remove notify function
                __on_EOS_P2P_RemoveNotifyIncomingPacketQueueFull = { Handle, NotificationId in
                    GTest.current.sdkReceived.append("EOS_P2P_RemoveNotifyIncomingPacketQueueFull")
                    XCTAssertNil(Handle)
                    XCTAssertEqual(NotificationId, .zero)
                }
            }
        }
        
        // Then
        __on_EOS_P2P_RemoveNotifyIncomingPacketQueueFull = nil
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_P2P_AddNotifyIncomingPacketQueueFull", "EOS_P2P_RemoveNotifyIncomingPacketQueueFull"])
    }
}

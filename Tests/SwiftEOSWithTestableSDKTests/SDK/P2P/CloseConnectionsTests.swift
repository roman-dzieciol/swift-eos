import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_P2P_CloseConnectionsTests: XCTestCase {
    public func testEOS_P2P_CloseConnections_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_P2P_CloseConnections = { Handle, Options in
                GTest.current.sdkReceived.append("EOS_P2P_CloseConnections")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_P2P_CLOSECONNECTIONS_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.SocketId)
                return .zero
            }
            defer { __on_EOS_P2P_CloseConnections = nil }
            
            // Given Actor
            let object: SwiftEOS_P2P_Actor = SwiftEOS_P2P_Actor(Handle: nil)
            
            // When SDK function is called
            try object.CloseConnections(
                LocalUserId: nil,
                SocketId: nil
            )
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_P2P_CloseConnections"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_P2P_CloseConnections"])
    }
}

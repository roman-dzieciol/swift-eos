import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_LobbyDetails_CopyInfoTests: XCTestCase {
    public func testEOS_LobbyDetails_CopyInfo_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_LobbyDetails_Release = { LobbyHandle in
                XCTAssertNil(LobbyHandle)
                TestGlobals.current.sdkReceived.append("EOS_LobbyDetails_Release")
            }
            
            // Given implementation for SDK function
            __on_EOS_LobbyDetails_CopyInfo = { Handle, Options, OutLobbyDetailsInfo in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertNil(OutLobbyDetailsInfo)
                TestGlobals.current.sdkReceived.append("EOS_LobbyDetails_CopyInfo")
                return .zero
            }
            defer { __on_EOS_LobbyDetails_CopyInfo = nil }
            
            // Given Actor
            let object: SwiftEOS_LobbyDetails_Actor = SwiftEOS_LobbyDetails_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: SwiftEOS_LobbyDetails_Info? = try object.CopyInfo()
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_LobbyDetails_CopyInfo", "EOS_LobbyDetails_Release"])
            XCTAssertNil(result)
        }
        
        // Then
        __on_EOS_LobbyDetails_Release = nil
    }
}

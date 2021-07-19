import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Platform_GetLobbyInterfaceTests: XCTestCase {
    public func testEOS_Platform_GetLobbyInterface_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_Platform_Release = { Handle in
                XCTAssertEqual(Handle, .nonZeroPointer)
                TestGlobals.current.sdkReceived.append("EOS_Platform_Release")
            }
            
            // Given implementation for SDK function
            __on_EOS_Platform_GetLobbyInterface = { Handle in
                XCTAssertEqual(Handle, .nonZeroPointer)
                TestGlobals.current.sdkReceived.append("EOS_Platform_GetLobbyInterface")
                return .nonZeroPointer
            }
            defer { __on_EOS_Platform_GetLobbyInterface = nil }
            
            // Given Actor
            let object: SwiftEOS_Platform_Actor = SwiftEOS_Platform_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: SwiftEOS_Lobby_Actor? = object.GetLobbyInterface()
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Platform_GetLobbyInterface", "EOS_Platform_Release"])
            XCTAssertNil(result)
        }
        
        // Then
        __on_EOS_Platform_Release = nil
    }
}

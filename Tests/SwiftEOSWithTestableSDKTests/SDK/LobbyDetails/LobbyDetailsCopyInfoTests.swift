import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_LobbyDetails_CopyInfoTests: XCTestCase {
    public func testEOS_LobbyDetails_CopyInfo_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_LobbyDetails_Release = { LobbyHandle in
                XCTAssertNil(LobbyHandle)
                GTest.current.sdkReceived.append("EOS_LobbyDetails_Release")
            }
            
            // Given implementation for SDK function
            __on_EOS_LobbyDetails_CopyInfo = { Handle, Options, OutLobbyDetailsInfo in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_LOBBYDETAILS_COPYINFO_API_LATEST)
                XCTAssertNotNil(OutLobbyDetailsInfo)
                GTest.current.sdkReceived.append("EOS_LobbyDetails_CopyInfo")
                return .zero
            }
            defer { __on_EOS_LobbyDetails_CopyInfo = nil }
            
            // Given Actor
            let object: SwiftEOS_LobbyDetails_Actor = SwiftEOS_LobbyDetails_Actor(Handle: nil)
            
            // When SDK function is called
            let result: SwiftEOS_LobbyDetails_Info? = try object.CopyInfo()
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_LobbyDetails_CopyInfo"])
            XCTAssertNil(result)
        }
        
        // Then
        __on_EOS_LobbyDetails_Release = nil
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_LobbyDetails_CopyInfo", "EOS_LobbyDetails_Release"])
    }
}

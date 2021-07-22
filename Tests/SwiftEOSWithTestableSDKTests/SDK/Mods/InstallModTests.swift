import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_Mods_InstallModTests: XCTestCase {
    public func testEOS_Mods_InstallMod_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            let waitForCompletionDelegate = expectation(description: "waitForCompletionDelegate")
            
            // Given implementation for SDK function
            __on_EOS_Mods_InstallMod = { Handle, Options, ClientData, CompletionDelegate in
                GTest.current.sdkReceived.append("EOS_Mods_InstallMod")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_MODS_INSTALLMOD_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.Mod)
                XCTAssertEqual(Options!.pointee.bRemoveAfterExit, .zero)
                XCTAssertNotNil(ClientData)
                CompletionDelegate?(GTest.current.pointer(object: _tagEOS_Mods_InstallModCallbackInfo(
                            ResultCode: .zero,
                            LocalUserId: nil,
                            ClientData: ClientData,
                            Mod: nil
                        )))
            }
            defer { __on_EOS_Mods_InstallMod = nil }
            
            // Given Actor
            let object: SwiftEOS_Mods_Actor = SwiftEOS_Mods_Actor(Handle: nil)
            
            // When SDK function is called
            try object.InstallMod(
                LocalUserId: nil,
                Mod: nil,
                bRemoveAfterExit: false,
                CompletionDelegate: { arg0 in
                    XCTAssertEqual(arg0.ResultCode, .zero)
                    XCTAssertNil(arg0.LocalUserId)
                    XCTAssertNil(arg0.Mod)
                    waitForCompletionDelegate.fulfill()
                }
            )
            
            // Then
            wait(for: [waitForCompletionDelegate], timeout: 0.5)
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Mods_InstallMod"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Mods_InstallMod"])
    }
}

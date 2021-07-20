import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Mods_UninstallModTests: XCTestCase {
    public func testEOS_Mods_UninstallMod_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            let waitForCompletionDelegate = expectation(description: "waitForCompletionDelegate")
            
            // Given implementation for SDK function
            __on_EOS_Mods_UninstallMod = { Handle, Options, ClientData, CompletionDelegate in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_MODS_UNINSTALLMOD_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.Mod)
                XCTAssertNotNil(ClientData)
                CompletionDelegate?(TestGlobals.current.pointer(object: _tagEOS_Mods_UninstallModCallbackInfo(
                            ResultCode: .zero,
                            LocalUserId: nil,
                            ClientData: ClientData,
                            Mod: nil
                        )))
                TestGlobals.current.sdkReceived.append("EOS_Mods_UninstallMod")
            }
            defer { __on_EOS_Mods_UninstallMod = nil }
            
            // Given Actor
            let object: SwiftEOS_Mods_Actor = SwiftEOS_Mods_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            try object.UninstallMod(
                LocalUserId: nil,
                Mod: nil,
                CompletionDelegate: { arg0 in
                    XCTAssertEqual(arg0.ResultCode, .zero)
                    XCTAssertNil(arg0.LocalUserId)
                    XCTAssertNil(arg0.Mod)
                    waitForCompletionDelegate.fulfill()
                }
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Mods_UninstallMod"])
            wait(for: [waitForCompletionDelegate], timeout: 0.5)
        }
    }
}

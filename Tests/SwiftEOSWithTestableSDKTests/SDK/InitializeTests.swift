import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_InitializeTests: XCTestCase {
    public func testEOS_Initialize_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Initialize = { Options in
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_INITIALIZE_API_LATEST)
                XCTAssertNil(Options!.pointee.AllocateMemoryFunction)
                XCTAssertNil(Options!.pointee.ReallocateMemoryFunction)
                XCTAssertNil(Options!.pointee.ReleaseMemoryFunction)
                XCTAssertNil(Options!.pointee.ProductName)
                XCTAssertNil(Options!.pointee.ProductVersion)
                XCTAssertNil(Options!.pointee.Reserved)
                XCTAssertNil(Options!.pointee.SystemInitializeOptions)
                XCTAssertNil(Options!.pointee.OverrideThreadAffinity)
                TestGlobals.current.sdkReceived.append("EOS_Initialize")
                return .zero
            }
            defer { __on_EOS_Initialize = nil }
            
            // When SDK function is called
            try SwiftEOS_Initialize(Options: SwiftEOS_InitializeOptions(
                    ApiVersion: .zero,
                    AllocateMemoryFunction: nil,
                    ReallocateMemoryFunction: nil,
                    ReleaseMemoryFunction: nil,
                    ProductName: nil,
                    ProductVersion: nil,
                    Reserved: nil,
                    SystemInitializeOptions: nil,
                    OverrideThreadAffinity: nil
                ))
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Initialize"])
        }
        
        // Then
        XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Initialize"])
    }
}

import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_InitializeTests: XCTestCase {
    public func testEOS_Initialize_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Initialize = { Options in
                GTest.current.sdkReceived.append("EOS_Initialize")
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_INITIALIZE_API_LATEST)
                let resultOfOptionsAllocateMemoryFunction = Options!.pointee.AllocateMemoryFunction?(
                    .zero,
                    .zero
                )
                XCTAssertNil(resultOfOptionsAllocateMemoryFunction)
                let resultOfOptionsReallocateMemoryFunction = Options!.pointee.ReallocateMemoryFunction?(
                    nil,
                    .zero,
                    .zero
                )
                XCTAssertNil(resultOfOptionsReallocateMemoryFunction)
                Options!.pointee.ReleaseMemoryFunction?(nil)
                XCTAssertNil(Options!.pointee.ProductName)
                XCTAssertNil(Options!.pointee.ProductVersion)
                XCTAssertNil(Options!.pointee.Reserved)
                XCTAssertNil(Options!.pointee.SystemInitializeOptions)
                XCTAssertNil(Options!.pointee.OverrideThreadAffinity)
                return .zero
            }
            defer { __on_EOS_Initialize = nil }
            
            // When SDK function is called
            try SwiftEOS_Initialize(Options: SwiftEOS_InitializeOptions(
                    ApiVersion: EOS_INITIALIZE_API_LATEST,
                    AllocateMemoryFunction: { arg0, arg1 in
                        XCTAssertEqual(arg0, .zero)
                        XCTAssertEqual(arg1, .zero)
                        GTest.current.sdkReceived.append("AllocateMemoryFunction")
                        return nil
                    },
                    ReallocateMemoryFunction: { arg0, arg1, arg2 in
                        XCTAssertNil(arg0)
                        XCTAssertEqual(arg1, .zero)
                        XCTAssertEqual(arg2, .zero)
                        GTest.current.sdkReceived.append("ReallocateMemoryFunction")
                        return nil
                    },
                    ReleaseMemoryFunction: { arg0 in
                        XCTAssertNil(arg0)
                        GTest.current.sdkReceived.append("ReleaseMemoryFunction")
                    },
                    ProductName: nil,
                    ProductVersion: nil,
                    Reserved: nil,
                    SystemInitializeOptions: nil,
                    OverrideThreadAffinity: nil
                ))
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Initialize", "AllocateMemoryFunction", "ReallocateMemoryFunction", "ReleaseMemoryFunction"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Initialize", "AllocateMemoryFunction", "ReallocateMemoryFunction", "ReleaseMemoryFunction"])
    }
}

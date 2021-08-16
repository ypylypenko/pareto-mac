//
//  Firewall.swift
//  Pareto Security
//
//  Created by Janez Troha on 15/07/2021.
//
import Foundation
import IOKit
import os.log

class FileVaultCheck: ParetoCheck {
    override var UUID: String {
        "c3aee29a-f16d-4573-a861-b3ba0d860067"
    }

    override var Title: String {
        "FileVault is on"
    }

    override func checkPasses() -> Bool {
        let output = runCMD(app: "/usr/bin/fdesetup", args: ["status"])
        return output.contains("FileVault is On")
    }
}

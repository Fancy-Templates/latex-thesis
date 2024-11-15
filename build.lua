#!/usr/bin/env texlua
-- This is the configuration file for the l3build system used to test and bundle the thesis template.
-- If you do not know the l3build system, you are better off not touching this file.

bundle   = ""
module   = "uulm-thesis-template"
ctanpkg  = module

maindir  = "."
builddir = maindir .. "/build"

-- Tests ======================================================
test_order  = {"log", "pdf"}

lvtext       = ".lvt" -- extension for log-based testfiles
pvtext       = ".pvt" -- extension for pdf-based testfiles

-- we support pdftex and luatex flavours of latex
checkengines = {"pdftex"} -- , "luatex"}
checkformat  = "latex"

-- cleanup ===========================================================
cleanfiles = {module .. "-ctan.curlopt", module .. "-ctan.zip"}

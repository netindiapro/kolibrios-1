if tup.getconfig("NO_FASM") ~= "" then return end
tup.rule("default.dtp.asm", 'fasm "%f" "%o"', "default.dtp")
tup.rule({"Yaru-light.asm", extra_inputs = {"default.dtp"}}, 'fasm "%f" "%o" ' .. tup.getconfig("KPACK_CMD"), "Yaru-light.skn")

return {
    cmd = {"clangd"},
    filetypes = {"c", "cpp", "objc", "objcpp"},
    root_dir =  require "lspconfig".util.root_pattern('.clangd',
          '.clang-tidy',
          '.clang-format',
          'compile_commands.json',
          'compile_flags.txt',
          'configure.ac',
          '.git')
}

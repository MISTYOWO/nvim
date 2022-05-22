return {
    cmd = {"gopls"},
    filetypes = {"go", "gomod", "gotmpl"},
    root_dir =  require "lspconfig".util.root_pattern("go.mod", ".git")
}
